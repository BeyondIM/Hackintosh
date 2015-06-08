#!/usr/bin/env bash
unpatched=/System/Library/Extensions/AppleHDA.kext
dir=$(cd "${0%/*}" && pwd)
resources="${dir}/resources"
tools="${dir}/tools"

# AppleHDA patching function
createAppleHDAInjector() {
    name=AppleHDA${1}.kext
    injector="${dir}/${name}"
    [[ -d ${injector} ]] && rm -rf ${injector}
    cp -R ${unpatched} ${injector}
    rm -r ${injector}/Contents/Resources/*
    rm -r ${injector}/Contents/PlugIns
    rm -r ${injector}/Contents/_CodeSignature
    rm ${injector}/Contents/version.plist

    # fix versions (must be larger than native)
    plist=${injector}/Contents/Info.plist
    pattern='s/(\d*\.\d*(\.\d*)?)/9\1/'
    replace=$(/usr/libexec/plistbuddy -c "Print :NSHumanReadableCopyright" ${plist} | perl -p -e ${pattern})
    /usr/libexec/plistbuddy -c "Set :NSHumanReadableCopyright '${replace}'" ${plist}
    replace=$(/usr/libexec/plistbuddy -c "Print :CFBundleGetInfoString" ${plist} | perl -p -e ${pattern})
    /usr/libexec/plistbuddy -c "Set :CFBundleGetInfoString '${replace}'" ${plist}
    replace=$(/usr/libexec/plistbuddy -c "Print :CFBundleVersion" ${plist} | perl -p -e ${pattern})
    /usr/libexec/plistbuddy -c "Set :CFBundleVersion '${replace}'" ${plist}
    replace=$(/usr/libexec/plistbuddy -c "Print :CFBundleShortVersionString" ${plist} | perl -p -e ${pattern})
    /usr/libexec/plistbuddy -c "Set :CFBundleShortVersionString '${replace}'" ${plist}

    # create AppleHDAHardwareConfigDriver overrides (injector personality)
    /usr/libexec/plistbuddy -c "Add ':HardwareConfigDriver_Temp' dict" ${plist}
    /usr/libexec/plistbuddy -c "Merge ${unpatched}/Contents/PlugIns/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist ':HardwareConfigDriver_Temp'" ${plist}
    /usr/libexec/plistbuddy -c "Copy ':HardwareConfigDriver_Temp:IOKitPersonalities:HDA Hardware Config Resource' ':IOKitPersonalities:HDA Hardware Config Resource'" ${plist}
    /usr/libexec/plistbuddy -c "Delete ':HardwareConfigDriver_Temp'" ${plist}
    /usr/libexec/plistbuddy -c "Delete ':IOKitPersonalities:HDA Hardware Config Resource:HDAConfigDefault'" ${plist}
    #/usr/libexec/plistbuddy -c "Delete ':IOKitPersonalities:HDA Hardware Config Resource:PostConstructionInitialization'" ${plist}
    /usr/libexec/plistbuddy -c "Add ':IOKitPersonalities:HDA Hardware Config Resource:IOProbeScore' integer" ${plist}
    /usr/libexec/plistbuddy -c "Set ':IOKitPersonalities:HDA Hardware Config Resource:IOProbeScore' 2000" ${plist}
    #/usr/libexec/plistbuddy -c "Set ':IOKitPersonalities:HDA Hardware Config Resource:CFBundleIdentifier' 'com.apple.driver.AppleHDA'" ${plist}
    /usr/libexec/plistbuddy -c "Merge ${resources}/ahhcd.plist ':IOKitPersonalities:HDA Hardware Config Resource'" ${plist}

    # create Platforms.xml.zlib and layout12.xml.zlib (inject personality)
    ${tools}/zlib inflate ${unpatched}/Contents/Resources/Platforms.xml.zlib > /tmp/rm_Platforms.plist
    /usr/libexec/plistbuddy -c "Delete ':PathMaps'" /tmp/rm_Platforms.plist
    /usr/libexec/plistbuddy -c "Merge ${resources}/layout/Platforms.plist" /tmp/rm_Platforms.plist
    ${tools}/zlib deflate /tmp/rm_Platforms.plist > ${injector}/Contents/Resources/Platforms.xml.zlib
    ${tools}/zlib deflate ${resources}/layout/layout12.plist > ${injector}/Contents/Resources/layout12.xml.zlib

    # patch AppHDA binary file
    perl -pi -e 's|\x84\x19\xd4\x11|\x00\x00\x00\x00|' ${injector}/Contents/MacOS/AppleHDA
    perl -pi -e 's|\x8b\x19\xd4\x11|\xe5\x76\x1d\x11|' ${injector}/Contents/MacOS/AppleHDA

    # move to system extensions directory
    sudo rm -rf /System/Library/Extensions/${name}
    sudo mv ${injector} /System/Library/Extensions/
    sudo chown -R root:wheel /System/Library/Extensions/${name}
}
createAppleHDAInjector "injector"

# rebuild cache
sudo touch /System/Library/Extensions
sudo kextcache -update-volume /
