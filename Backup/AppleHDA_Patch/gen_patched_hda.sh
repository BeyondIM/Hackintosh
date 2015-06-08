#!/usr/bin/env bash
unpatched=${1:-/System/Library/Extensions/AppleHDA.kext}
dir=$(cd "${0%/*}" && pwd)
resources="${dir}/resources"
tools="${dir}/tools"
patched="${dir}/AppleHDA.kext"
plist="${patched}/Contents/PlugIns/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist"

[[ ! -d ${unpatched} ]] && { echo "${unpatched} doesn't exist."; exit 1; }
[[ -d ${patched} ]] && rm -rf ${patched}
cp -R ${unpatched} ${patched}

# patch AppleHDAHardwareConfigDriver
/usr/libexec/plistbuddy -c "Delete ':IOKitPersonalities:HDA Hardware Config Resource:HDAConfigDefault'" ${plist}
# /usr/libexec/plistbuddy -c "Add ':IOKitPersonalities:HDA Hardware Config Resource:IOProbeScore' integer" ${plist}
# /usr/libexec/plistbuddy -c "Set ':IOKitPersonalities:HDA Hardware Config Resource:IOProbeScore' 2000" ${plist}
/usr/libexec/plistbuddy -c "Merge ${resources}/ahhcd.plist ':IOKitPersonalities:HDA Hardware Config Resource'" ${plist}

# patch Platforms.xml.zlib and layout12.xml.zlib
${tools}/zlib inflate ${patched}/Contents/Resources/Platforms.xml.zlib > /tmp/rm_Platforms.plist
/usr/libexec/plistbuddy -c "Delete ':PathMaps'" /tmp/rm_Platforms.plist
/usr/libexec/plistbuddy -c "Merge ${resources}/layout/Platforms.plist" /tmp/rm_Platforms.plist
${tools}/zlib deflate /tmp/rm_Platforms.plist > ${patched}/Contents/Resources/Platforms.xml.zlib
${tools}/zlib deflate ${resources}/layout/layout12.plist > ${patched}/Contents/Resources/layout12.xml.zlib

# patch AppHDA binary file
perl -pi -e 's|\x84\x19\xd4\x11|\x00\x00\x00\x00|' ${patched}/Contents/MacOS/AppleHDA
perl -pi -e 's|\x8b\x19\xd4\x11|\xe5\x76\x1d\x11|' ${patched}/Contents/MacOS/AppleHDA

# move to system extensions directory
sudo rm -rf /System/Library/Extensions/AppleHDA.kext
sudo chown -R root:wheel ${patched}
sudo mv ${patched} /System/Library/Extensions/

# rebuild cache
sudo touch /System/Library/Extensions
sudo kextcache -update-volume /
