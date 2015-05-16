/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Nov 13 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLKCNYkO.aml, Tue Jan 27 22:32:46 2015
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000E9AC (59820)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x0C
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("iASLKCNYkO.aml", "DSDT", 1, "HPQOEM", "INSYDE  ", 0x00000000)
{
    /*
     * iASL Warning: There were 7 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0.CTLD, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (_SB_.PCI0.IEIT.EITV, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (ECST, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (HDOS, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (IDAB, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (TNOT, MethodObj)    // Warning: Unresolved method, guessing 0 arguments

    External (_PR_.CPU0._PPC, IntObj)
    External (_SB_.IAOE.AOEN, IntObj)
    External (_SB_.IAOE.WLPE, UnknownObj)
    External (CFGD, UnknownObj)
    External (HWID, IntObj)
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)
    External (PDC4, UnknownObj)
    External (PDC5, UnknownObj)
    External (PDC6, UnknownObj)
    External (PDC7, UnknownObj)

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0xFFFF)
    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x8000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xF0000000)
    Name (PELN, 0x04000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BYB, 0x06)
    Name (BWB, 0x06)
    Name (BELC, 0x09)
    Name (BRHP, 0x0A)
    Name (BTFC, 0x0B)
    Name (BEHP, 0x0C)
    Name (BELP, 0x0E)
    Name (BTL, 0x10)
    Name (BTFP, 0x11)
    Name (BSR, 0x14)
    Name (BLR, 0x18)
    Name (BLH, 0x19)
    Name (BCH, 0x16)
    Name (BCC, 0x1C)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (BLLS, 0x25)
    Name (BLLP, 0x26)
    Name (BLLD, 0x27)
    Name (BKF, 0x28)
    Name (BHBE, 0x30)
    Name (BHBC, 0x31)
    Name (BHBN, 0x32)
    Name (BHBM, 0x33)
    Name (TCGM, One)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    Name (KBWK, Zero)
    Name (TPWK, Zero)
    Name (SAV0, Zero)
    Name (SAV1, Zero)
    Name (PSVD, Zero)
    Name (SSOS, Zero)
    OperationRegion (GNVS, SystemMemory, 0x3AFBDC98, 0x00000203)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x25), 
        REVN,   8, 
        REV3,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        COMA,   8, 
        COMB,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        PLID,   8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        Offset (0xED), 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        GBAS,   16, 
        SGGP,   8, 
        Offset (0x19D), 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        Offset (0x1B2), 
        XHCI,   8, 
        XHPM,   8, 
        Offset (0x1B7), 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        Offset (0x1C4), 
        LPMV,   8, 
        Offset (0x1C6), 
        DDRF,   8, 
        MM64,   8, 
        Offset (0x1CB), 
        PSKE,   8, 
        PSME,   8, 
        Offset (0x1E0), 
        CCMD,   8, 
        COMD,   8, 
        LPT1,   8, 
        PSTP,   8, 
        WKMD,   8, 
        IDER,   8, 
        PIE0,   8, 
        PIE1,   8, 
        CSTS,   8, 
        PMEE,   8, 
        WOLE,   8, 
        NVAD,   32, 
        PGVI,   32, 
        OPTF,   8, 
        IFSE,   8, 
        AOAC,   8, 
        S1C0,   16, 
        S1C1,   16, 
        S2C0,   16, 
        S2C1,   16, 
        SLPS,   8, 
        ALAT,   32
    }

    OperationRegion (OGNS, SystemMemory, 0x3AFBB018, 0x0000110E)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        SERN,   80, 
        RES1,   48, 
        WMAC,   48, 
        RS11,   16, 
        BMAC,   48, 
        RS12,   16, 
        MACA,   48, 
        RES2,   24, 
        NISC,   8, 
        RS21,   176, 
        MBNE,   128, 
        HWCN,   256, 
        CTNU,   152, 
        RES3,   8, 
        CLIM,   8, 
        FPSZ,   8, 
        WIN7,   8, 
        PFCY,   16, 
        PREV,   24, 
        WPCR,   8, 
        WINA,   8, 
        GPSA,   8, 
        KBMT,   8, 
        RES4,   32, 
        LCOD,   24, 
        RES5,   8, 
        GUID,   64, 
        UUID,   128, 
        ASTG,   160, 
        SKUN,   112, 
        MDID,   256, 
        ESTL,   8, 
        IMID,   8, 
        ODDC,   8, 
        TVFL,   8, 
        QPFL,   8, 
        QPSL,   8, 
        CHID,   8, 
        OSKU,   8, 
        WPFL,   8, 
        DBSW,   8, 
        EFOF,   8, 
        MSME,   8, 
        INFL,   16, 
        Offset (0x1000), 
        WSD0,   8, 
        WSD1,   8, 
        WSD2,   8, 
        WSD3,   8, 
        WSD4,   8, 
        WSD5,   8, 
        WSD6,   8, 
        WSD7,   8, 
        HWCT,   8, 
        HWBC,   8, 
        HWRC,   8, 
        HWBF,   1024, 
        IAOR,   8, 
        CDAT,   32, 
        WLVD,   16, 
        WLDD,   16, 
        WLSV,   16, 
        WLSS,   16, 
        BTVD,   16, 
        BTDD,   16, 
        WWVD,   16, 
        WWDD,   16, 
        GPVD,   16, 
        GPDD,   16, 
        FACM,   16, 
        SMA4,   8, 
        WIVD,   16, 
        WIDD,   16, 
        RCKP,   8, 
        HDSM,   16, 
        HD1H,   64, 
        HD2H,   64, 
        OD1H,   64, 
        EBUR,   8, 
        HD1P,   16, 
        HD1M,   16, 
        HD2P,   16, 
        HD2M,   16, 
        OD1P,   16, 
        OD1M,   16, 
        HBUP,   8, 
        OG00,   8, 
        OG01,   8, 
        OG02,   8, 
        OG03,   8, 
        OG04,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        ECON,   8, 
        TJMX,   8, 
        FNKY,   8, 
        CAME,   8, 
        VTDT,   8, 
        DPMD,   8, 
        LANP,   8, 
        CPUP,   64, 
        GPUP,   32, 
        SYSP,   64, 
        FANP,   32, 
        BATP,   32, 
        HDDP,   32, 
        CPUT,   8, 
        GPUT,   8, 
        SYST,   8, 
        FANT,   8, 
        BATT,   8, 
        HDDT,   8, 
        SAPS,   8, 
        BRIV,   8
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {1,3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Scope (\_SB)
        {
            Device (ACAD)
            {
                Name (_HID, "ACPI0003")  // _HID: Hardware ID
                Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                {
                    _SB
                })
                Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                {
                    If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                    {
                        Store (^^PCI0.LPCB.EC0.SW2S, Local0)
                    }
                    Else
                    {
                        Store (One, Local0)
                    }

                    Return (Local0)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (LID0)
            {
                Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                {
                    If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                    {
                        If (LEqual (^^PCI0.LPCB.EC0.ECLS, One))
                        {
                            Store (Zero, Local0)
                        }
                        Else
                        {
                            Store (One, Local0)
                        }
                    }
                    Else
                    {
                        Store (One, Local0)
                    }

                    ^^PCI0.LPCB.EC0.ULID (One)
                    Return (Local0)
                }
            }

            Device (PWRB)
            {
                Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Method (GBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            Store (TIDX, Arg2)
        }

        Method (PBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            Store (Arg2, TIDX)
        }

        Method (ITOS, 1, NotSerialized)
        {
            Store (Buffer (0x05)
                {
                     0x20, 0x20, 0x20, 0x20, 0x20                   
                }, Local0)
            Store (Buffer (0x11)
                {
                    "0123456789ABCDEF"
                }, Local7)
            Store (0x05, Local1)
            Store (Zero, Local2)
            Store (Zero, Local3)
            While (Local1)
            {
                Decrement (Local1)
                And (ShiftRight (Arg0, ShiftLeft (Local1, 0x02)), 0x0F, Local4)
                GBFE (Local7, Local4, RefOf (Local5))
                PBFE (Local0, Local2, Local5)
                Increment (Local2)
            }

            Return (Local0)
        }

        Device (BAT0)
        {
            Name (FRST, One)
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (PBIF, Package (0x0D)
            {
                One, 
                Ones, 
                Ones, 
                One, 
                Ones, 
                0xFA, 
                0x96, 
                0x0A, 
                0x19, 
                "BAT0", 
                " ", 
                " ", 
                " "
            })
            Name (PBST, Package (0x04)
            {
                Zero, 
                Ones, 
                Ones, 
                0x2710
            })
            Name (BAST, Zero)
            Name (B1ST, 0x0F)
            Name (B1WT, Zero)
            Name (FABL, Ones)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        Store (0x1F, B1ST)
                    }
                    Else
                    {
                        Store (0x0F, B1ST)
                    }
                }
                Else
                {
                    Store (0x0F, B1ST)
                }

                Return (B1ST)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UPBI ()
                    }
                    Else
                    {
                        IVBI ()
                    }
                }
                Else
                {
                    IVBI ()
                }

                Return (PBIF)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UPBS ()
                    }
                    Else
                    {
                        IVBS ()
                    }
                }
                Else
                {
                    IVBS ()
                }

                Return (PBST)
            }

            Method (UPBI, 0, NotSerialized)
            {
                Store (^^PCI0.LPCB.EC0.BFCC, Local5)
                If (LAnd (Local5, LNot (And (Local5, 0x8000))))
                {
                    ShiftRight (Local5, 0x05, Local5)
                    ShiftLeft (Local5, 0x05, Local5)
                    Store (Local5, Index (PBIF, One))
                    Store (Local5, Index (PBIF, 0x02))
                    Divide (Local5, 0x64, , Local2)
                    Add (Local2, One, Local2)
                    If (LEqual (^^PCI0.LPCB.EC0.AD47, One))
                    {
                        Multiply (Local2, 0x0E, Local4)
                        Add (Local4, 0x02, Index (PBIF, 0x05))
                        Multiply (Local2, 0x09, Local4)
                        Add (Local4, 0x02, Index (PBIF, 0x06))
                        Multiply (Local2, 0x0B, Local4)
                    }
                    Else
                    {
                        If (LEqual (SMA4, One))
                        {
                            Multiply (Local2, 0x0C, Local4)
                            Add (Local4, 0x02, Index (PBIF, 0x05))
                            Multiply (Local2, 0x07, Local4)
                            Add (Local4, 0x02, Index (PBIF, 0x06))
                            Multiply (Local2, 0x09, Local4)
                        }
                        Else
                        {
                            Multiply (Local2, 0x0A, Local4)
                            Add (Local4, 0x02, Index (PBIF, 0x05))
                            Multiply (Local2, 0x05, Local4)
                            Add (Local4, 0x02, Index (PBIF, 0x06))
                            Multiply (Local2, 0x07, Local4)
                        }
                    }

                    Add (Local4, 0x02, FABL)
                }

                If (^^PCI0.LPCB.EC0.MBNH)
                {
                    Store (^^PCI0.LPCB.EC0.BVLB, Local0)
                    Store (^^PCI0.LPCB.EC0.BVHB, Local1)
                    ShiftLeft (Local1, 0x08, Local1)
                    Or (Local0, Local1, Local0)
                    Store (Local0, Index (PBIF, 0x04))
                    Store ("OANI$", Index (PBIF, 0x09))
                    Store ("NiMH", Index (PBIF, 0x0B))
                }
                Else
                {
                    Store (^^PCI0.LPCB.EC0.BVLB, Local0)
                    Store (^^PCI0.LPCB.EC0.BVHB, Local1)
                    ShiftLeft (Local1, 0x08, Local1)
                    Or (Local0, Local1, Local0)
                    Store (Local0, Index (PBIF, 0x04))
                    Sleep (0x32)
                    Store ("LION", Index (PBIF, 0x0B))
                }

                Store ("Primary", Index (PBIF, 0x09))
                UPUM ()
                Store (One, Index (PBIF, Zero))
            }

            Method (UPUM, 0, NotSerialized)
            {
                Store (Buffer (0x0A)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x00, 0x00                                     
                    }, Local0)
                Store (Buffer (0x05)
                    {
                         0x36, 0x35, 0x35, 0x33, 0x35                   
                    }, Local6)
                Store (Buffer (0x05)
                    {
                         0x31, 0x32, 0x33, 0x32, 0x31                   
                    }, Local7)
                Store ("Hewlett-Packard", Index (PBIF, 0x0C))
            }

            Method (UPBS, 0, NotSerialized)
            {
                Store (^^PCI0.LPCB.EC0.MCUR, Local0)
                If (And (Local0, 0x8000))
                {
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (PBST, One))
                    }
                    Else
                    {
                        Not (Local0, Local1)
                        Increment (Local1)
                        And (Local1, 0xFFFF, Local3)
                        Store (Local3, Index (PBST, One))
                    }
                }
                Else
                {
                    Store (Local0, Index (PBST, One))
                }

                Store (^^PCI0.LPCB.EC0.MBRM, Local5)
                If (LNot (And (Local5, 0x8000)))
                {
                    ShiftRight (Local5, 0x05, Local5)
                    ShiftLeft (Local5, 0x05, Local5)
                    If (LNotEqual (Local5, DerefOf (Index (PBST, 0x02))))
                    {
                        Store (Local5, Index (PBST, 0x02))
                    }
                }

                If (LAnd (LNot (^^PCI0.LPCB.EC0.SW2S), LEqual (^^PCI0.LPCB.EC0.BACR, One)))
                {
                    Store (FABL, Index (PBST, 0x02))
                }

                Store (^^PCI0.LPCB.EC0.MBCV, Index (PBST, 0x03))
                Store (^^PCI0.LPCB.EC0.MBST, Index (PBST, Zero))
            }

            Method (IVBI, 0, NotSerialized)
            {
                Store (Ones, Index (PBIF, One))
                Store (Ones, Index (PBIF, 0x02))
                Store (Ones, Index (PBIF, 0x04))
                Store ("Bad", Index (PBIF, 0x09))
                Store ("Bad", Index (PBIF, 0x0A))
                Store ("Bad", Index (PBIF, 0x0B))
                Store ("Bad", Index (PBIF, 0x0C))
            }

            Method (IVBS, 0, NotSerialized)
            {
                Store (Zero, Index (PBST, Zero))
                Store (Ones, Index (PBST, One))
                Store (Ones, Index (PBST, 0x02))
                Store (0x2710, Index (PBST, 0x03))
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (PR00, Package (0x23)
            {
                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }
            })
            Name (AR00, Package (0x23)
            {
                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000010000, // Range Minimum
                    0x000000000001FFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000010000, // Length
                    ,, _Y0F, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                If (LOr (LEqual (MM64, Zero), LLessEqual (OSYS, 0x07D3)))
                {
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._LEN, MSLN)  // _LEN: Length
                    Store (Zero, MSLN)
                }
                Else
                {
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._LEN, M2LN)  // _LEN: Length
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MIN, M2MN)  // _MIN: Minimum Base Address
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MAX, M2MX)  // _MAX: Maximum Base Address
                    Store (0x00000000, M2LN)
                    If (LGreaterEqual (TUUD, 0x1000))
                    {
                        ShiftLeft (TUUD, 0x14, M2MN)
                    }
                    Else
                    {
                        Store (0x00000000, M2MN)
                    }

                    Subtract (Add (M2MN, M2LN), One, M2MX)
                }

                Return (BUF0)
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                Else
                {
                    If(LOr(_OSI("Darwin"),_OSI("Windows 2012")))
                    {
                        If (LEqual (XCNT, Zero))
                        {
                            ^XHC.XSEL ()
                            Increment (XCNT)
                        }
                    }
                }

                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, One))
                        {
                            NHPG ()
                        }

                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (PMEE)
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            Zero
                        })
                    }
                }

                Name (PR04, Package (0x0C)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        LNKF, 
                        Zero
                    }
                })
                Name (AR04, Package (0x0C)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        Zero, 
                        0x15
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0x6C), 
                        Offset (0x6D), 
                        Offset (0x6E), 
                        XUSB,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                OperationRegion (GPIO, SystemIO, 0x0500, 0x60)
                Field (GPIO, ByteAcc, Lock, Preserve)
                {
                    Offset (0x0C), 
                        ,   4, 
                        ,   13, 
                    PI17,   1, 
                    Offset (0x38), 
                        ,   3, 
                    PO35,   1, 
                    PO36,   1, 
                    PI37,   1, 
                        ,   13, 
                    PO51,   1, 
                    PO52,   1, 
                    PO53,   1, 
                    PO54,   1
                }

                Name (TBST, One)
                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (PHOT, One)
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BFFR, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0062,             // Range Minimum
                                0x0062,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0066,             // Range Minimum
                                0x0066,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                        })
                        Return (BFFR)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
                    Field (ERAM, ByteAcc, Lock, Preserve)
                    {
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMD0,   256, 
                        BCNT,   8, 
                        SMAA,   8, 
                        BATD,   16, 
                        Offset (0x40), 
                        SW2S,   1, 
                            ,   2, 
                        ACCC,   1, 
                        TRPM,   1, 
                        Offset (0x41), 
                        W7OS,   1, 
                            ,   1, 
                        RFLE,   1, 
                        SUSE,   1, 
                        RFLG,   1, 
                        PFN2,   1, 
                        WOLF,   1, 
                        PFLG,   1, 
                            ,   5, 
                        UBOS,   1, 
                        Offset (0x43), 
                        BBDA,   1, 
                        CIRB,   1, 
                            ,   1, 
                        ACKY,   1, 
                            ,   2, 
                        NQLB,   1, 
                        Offset (0x44), 
                        NICL,   1, 
                        NICD,   1, 
                        Offset (0x45), 
                            ,   2, 
                        QUAD,   1, 
                        Offset (0x46), 
                        Offset (0x4E), 
                        LIDE,   1, 
                        Offset (0x52), 
                        ECLS,   1, 
                        WBSS,   1, 
                        Offset (0x58), 
                        RTMP,   8, 
                        ECT1,   8, 
                        ECT2,   8, 
                        RG5B,   8, 
                        FSPD,   16, 
                        Offset (0x5F), 
                        CFN2,   1, 
                        SFN2,   1, 
                        Offset (0x62), 
                        ECTH,   8, 
                        ECTL,   8, 
                        Offset (0x68), 
                            ,   3, 
                        PLGS,   1, 
                        Offset (0x69), 
                            ,   6, 
                        BTVD,   1, 
                        Offset (0x6C), 
                        GWKR,   8, 
                        Offset (0x70), 
                        BCLB,   8, 
                        BCHB,   8, 
                        BFCC,   16, 
                        BVLB,   8, 
                        BVHB,   8, 
                        BDVO,   8, 
                        Offset (0x7E), 
                        BATP,   8, 
                        ECTB,   1, 
                        Offset (0x82), 
                        MBST,   8, 
                        MCUR,   16, 
                        MBRM,   16, 
                        MBCV,   16, 
                        Offset (0x8D), 
                            ,   5, 
                        MBFC,   1, 
                        Offset (0x92), 
                        SPSV,   8, 
                        AVGT,   8, 
                        GSSU,   1, 
                        GSMS,   1, 
                        Offset (0x95), 
                        MMST,   4, 
                        DMST,   4, 
                        Offset (0xA0), 
                        QBHK,   8, 
                        RTCE,   1, 
                        Offset (0xA2), 
                        QBBB,   8, 
                        SMTD,   8, 
                        MBTS,   1, 
                        MBTF,   1, 
                            ,   4, 
                        AD47,   1, 
                        BACR,   1, 
                        MBTC,   1, 
                            ,   2, 
                        MBNH,   1, 
                        Offset (0xA6), 
                        MBDC,   8, 
                        Offset (0xAA), 
                        ADIM,   1, 
                        SMSZ,   1, 
                            ,   5, 
                        RCDS,   1, 
                        Offset (0xAD), 
                        SADP,   8, 
                        Offset (0xB2), 
                        RPM1,   8, 
                        RPM2,   8, 
                        Offset (0xBA), 
                        CLOW,   8, 
                        CMAX,   8, 
                        Offset (0xCF), 
                        DLYC,   8, 
                        EBPL,   1, 
                        Offset (0xD2), 
                            ,   6, 
                        APWR,   1, 
                        DLYE,   1, 
                        Offset (0xD4), 
                        PSHD,   8, 
                        PSLD,   8, 
                        DBPL,   8, 
                        Offset (0xDA), 
                        PSIN,   8, 
                        PSKB,   1, 
                        PSTP,   1, 
                        PSBA,   1, 
                        PWOL,   1, 
                        Offset (0xDF), 
                        ECBW,   1, 
                        Offset (0xE0), 
                        DLYT,   8, 
                        DLY2,   8, 
                        BRTL,   8, 
                        Offset (0xE5), 
                        GP12,   8, 
                        SFHK,   8, 
                        Offset (0xE9), 
                        DTMT,   8, 
                        PL12,   8, 
                        ETMT,   8, 
                        Offset (0xF0), 
                            ,   7, 
                        TMPS,   1, 
                        Offset (0xF2), 
                        ZPOD,   1, 
                            ,   4, 
                        WLPW,   1, 
                        WLPS,   1, 
                        Offset (0xF4), 
                        SFAN,   8, 
                        Offset (0xF8), 
                        BAAE,   1, 
                        S3WA,   1, 
                        BNAC,   1, 
                            ,   1, 
                        EFS3,   1, 
                        S3WK,   1, 
                        RSAL,   1
                    }

                    Name (ECOK, Zero)
                    Name (BATO, Zero)
                    Name (BATN, Zero)
                    Name (BATF, 0xC0)
                    Name (TMEE, Zero)
                    Name (TMDE, Zero)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                        {
                            Store (One, ECOK)
                            GBAS ()
                            ECMI ()
                        }
                    }

                    Method (BPOL, 1, NotSerialized)
                    {
                        Store (Arg0, DBPL)
                        Store (One, EBPL)
                    }

                    Method (BPOM, 0, NotSerialized)
                    {
                        Store (Zero, DBPL)
                        Store (Zero, EBPL)
                    }

                    Name (_GPE, 0x1D)  // _GPE: General Purpose Events
                    Method (GBAS, 0, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (Zero, BATF)
                            Store (MBTS, Local0)
                            Store (SW2S, Local1)
                            ShiftLeft (Local0, 0x06, Local0)
                            ShiftLeft (Local1, One, Local1)
                            If (LNotEqual (And (BATO, 0x40), Local0))
                            {
                                Or (BATF, 0x40, BATF)
                            }

                            If (LNotEqual (And (BATO, 0x02), Local1))
                            {
                                Or (BATF, 0x02, BATF)
                            }

                            Store (Zero, BATO)
                            Or (Local0, Local1, BATO)
                        }
                    }

                    Method (_Q09, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        BPOM ()
                        GBAS ()
                        Notify (BAT0, 0x80)
                        Notify (BAT0, 0x81)
                        Notify (ACAD, 0x80)
                    }

                    Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (ECOK, One))
                        {
                            CBCD ()
                            GBAS ()
                            Notify (BAT0, 0x81)
                            Notify (BAT0, 0x80)
                            If (And (0x02, BATF))
                            {
                                Notify (ACAD, 0x80)
                                Store (SW2S, PWRS)
                                If (SW2S)
                                {
                                    ^^^^WMID.GWEV (0x03, Zero)
                                }
                            }

                            PNOT ()
                            ^^^ACEL.ADJT ()
                        }
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (Zero, BACR)
                            Notify (BAT0, 0x80)
                        }
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (BAT0, 0x81)
                        Notify (BAT0, 0x80)
                    }

                    Method (_Q33, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (^^RTC.RTMN, Local0)
                        FromBCD (Local0, Local0)
                        Store (^^RTC.RTHR, Local1)
                        FromBCD (Local1, Local1)
                        Store (^^RTC.RTDY, Local2)
                        Store (^^RTC.RTSE, Local3)
                        FromBCD (Local3, Local3)
                        If (LEqual (ECOK, One))
                        {
                            Store (0xFF, PSIN)
                            Sleep (One)
                            Store (Local0, PSLD)
                            Store (Local1, PSHD)
                            Store (0x1C, PSIN)
                            Sleep (One)
                            Store (Local2, PSLD)
                            Store (Local3, PSHD)
                            Store (0x1D, PSIN)
                        }
                    }

                    Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Sleep (0x14)
                        Store ("_Q80 : Temperature Up", Debug)
                        If (LAnd (LEqual (\_TZ.HOTF, One), LEqual (OSYS, 0x07DC)))
                        {
                            Return (Zero)
                        }

                        Notify (\_TZ.TZ01, 0x80)
                        Return (Zero)
                    }

                    Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Sleep (0x14)
                        Store ("_Q81 : Temperature Down", Debug)
                        If (LAnd (LEqual (\_TZ.HOTF, One), LEqual (OSYS, 0x07DC)))
                        {
                            Return (Zero)
                        }

                        Notify (\_TZ.TZ01, 0x80)
                        Return (Zero)
                    }

                    Method (_Q82, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Sleep (0x14)
                        Store ("_Q82 : Temperature reachs for Turbo Mode OFF", Debug)
                        Store (One, TMDE)
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Sleep (0x14)
                        Store ("_Q83 : Temperature reachs for Turbo Mode ON", Debug)
                        Store (One, TMEE)
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q84, 0, Serialized)  // _Qxx: EC Query
                    {
                        If (LEqual (PHOT, One))
                        {
                            Store (0x02, PHOT)
                            Notify (^^^PEG0.PEGP, 0xD1)
                        }
                    }

                    Method (_Q86, 0, Serialized)  // _Qxx: EC Query
                    {
                        If (LEqual (PHOT, One))
                        {
                            Store (0x03, PHOT)
                            Notify (^^^PEG0.PEGP, 0xD5)
                        }
                    }

                    Method (_Q8A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (ECOK, One))
                        {
                            If (LIDE)
                            {
                                Store ("_Q8A : LID Switch Event", Debug)
                                Store (One, UPRW)
                                Store (Zero, LIDE)
                                Sleep (0x14)
                                Notify (LID0, 0x80)
                                If (LEqual (And (CMSR (0x49), 0x04), 0x04))
                                {
                                    If (LEqual (ECLS, One))
                                    {
                                        Store (One, UPBD)
                                    }
                                    Else
                                    {
                                        Store (Zero, UPBD)
                                    }

                                    Store (Zero, UPRW)
                                }

                                ^^^ACEL.ADJT ()
                            }
                        }
                    }

                    Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store ("_Q0D : Switch Display (Fn+F4)", Debug)
                        ^^^IGPU.GHDS (Zero)
                        Sleep (0xC8)
                    }

                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (^^^IGPU.DD02, 0x87)
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (^^^IGPU.DD02, 0x86)
                    }

                    Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store ("!!! Wireless Button pressed !!!", Debug)
                        If (LGreaterEqual (OSYS, 0x07DC))
                        {
                            Notify (WLBT, 0x80)
                        }
                        Else
                        {
                            If (BNLS)
                            {
                                Store (Zero, BNLS)
                                Store (Zero, Local0)
                            }
                            Else
                            {
                                Store (One, BNLS)
                                Store (One, Local0)
                            }

                            If (LEqual (^^^^WMID.WMIF, One))
                            {
                                If (And (LEqual (WWLS, One), LEqual (WLDS, One)))
                                {
                                    Store (Local0, WLOF)
                                }

                                If (And (LEqual (WBTS, One), LEqual (BTDS, One)))
                                {
                                    Store (Local0, BTOF)
                                }
                            }
                            Else
                            {
                                If (LEqual (WLDS, One))
                                {
                                    Store (Local0, WLOF)
                                }

                                If (LEqual (BTDS, One))
                                {
                                    Store (Local0, BTOF)
                                }
                            }

                            ^^^^WMID.GWEV (0x05, Zero)
                        }
                    }

                    Method (_Q8E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (\_PR.CPU0._PPC, Local0)
                        Subtract (PPCM, One, Local1)
                        If (LLess (Local0, Local1))
                        {
                            Increment (Local0)
                            CPUS (Local0)
                        }

                        Store (Local0, CLOW)
                    }

                    Method (_Q8F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (\_PR.CPU0._PPC, Local0)
                        If (Local0)
                        {
                            Decrement (Local0)
                            CPUS (Local0)
                        }

                        Store (Local0, CLOW)
                    }

                    Method (_Q92, 0, Serialized)  // _Qxx: EC Query
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        If (LEqual (ECOK, One))
                        {
                            If (LEqual (GSMS, One))
                            {
                                Store (MMST, Local0)
                            }
                            Else
                            {
                                Store (DMST, Local0)
                            }

                            While (One)
                            {
                                Store (Local0, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (Zero, PSVD)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Store (0x0F, PSVD)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Store (0x15, PSVD)
                                        }
                                    }
                                }

                                Break
                            }

                            Notify (\_TZ.TZ01, 0x81)
                            ^^^^WMID.GWEV (0x0A, One)
                        }
                    }

                    Method (_Q93, 0, Serialized)  // _Qxx: EC Query
                    {
                        Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        If (LEqual (ECOK, One))
                        {
                            Store (MMST, Local0)
                            Store (DMST, Local1)
                            While (One)
                            {
                                Store (Local0, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    While (One)
                                    {
                                        Store (Local1, _T_1)
                                        If (LEqual (_T_1, One))
                                        {
                                            Store (0x08, PSVD)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_1, 0x02))
                                            {
                                                Store (0x05, PSVD)
                                            }
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        While (One)
                                        {
                                            Store (Local1, _T_2)
                                            If (LEqual (_T_2, Zero))
                                            {
                                                Store (0x08, PSVD)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_2, 0x02))
                                                {
                                                    Store (0x1E, PSVD)
                                                }
                                            }

                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            While (One)
                                            {
                                                Store (Local1, _T_3)
                                                If (LEqual (_T_3, Zero))
                                                {
                                                    Store (0x10, PSVD)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_3, One))
                                                    {
                                                        Store (0x18, PSVD)
                                                    }
                                                }

                                                Break
                                            }
                                        }
                                    }
                                }

                                Break
                            }

                            Notify (\_TZ.TZ01, 0x81)
                        }
                    }

                    Method (_Q94, 0, Serialized)  // _Qxx: EC Query
                    {
                        Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        If (LEqual (ECOK, One))
                        {
                            Store (MMST, Local0)
                            Store (DMST, Local1)
                            While (One)
                            {
                                Store (Local0, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    While (One)
                                    {
                                        Store (Local1, _T_1)
                                        If (LEqual (_T_1, One))
                                        {
                                            Store (0x11, PSVD)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_1, 0x02))
                                            {
                                                Store (0x0B, PSVD)
                                            }
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        While (One)
                                        {
                                            Store (Local1, _T_2)
                                            If (LEqual (_T_2, Zero))
                                            {
                                                Store (0x04, PSVD)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_2, 0x02))
                                                {
                                                    Store (0x1B, PSVD)
                                                }
                                            }

                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            While (One)
                                            {
                                                Store (Local1, _T_3)
                                                If (LEqual (_T_3, Zero))
                                                {
                                                    Store (0x0B, PSVD)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_3, One))
                                                    {
                                                        Store (0x1B, PSVD)
                                                    }
                                                }

                                                Break
                                            }
                                        }
                                    }
                                }

                                Break
                            }

                            Notify (\_TZ.TZ01, 0x81)
                        }
                    }

                    Method (_Q95, 0, Serialized)  // _Qxx: EC Query
                    {
                        Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        If (LEqual (ECOK, One))
                        {
                            Store (MMST, Local0)
                            Store (DMST, Local1)
                            While (One)
                            {
                                Store (Local0, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    While (One)
                                    {
                                        Store (Local1, _T_1)
                                        If (LEqual (_T_1, One))
                                        {
                                            Store (0x19, PSVD)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_1, 0x02))
                                            {
                                                Store (0x10, PSVD)
                                            }
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        While (One)
                                        {
                                            Store (Local1, _T_2)
                                            If (LEqual (_T_2, Zero))
                                            {
                                                Store (0x02, PSVD)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_2, 0x02))
                                                {
                                                    Store (0x18, PSVD)
                                                }
                                            }

                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            While (One)
                                            {
                                                Store (Local1, _T_3)
                                                If (LEqual (_T_3, Zero))
                                                {
                                                    Store (0x05, PSVD)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_3, One))
                                                    {
                                                        Store (0x1E, PSVD)
                                                    }
                                                }

                                                Break
                                            }
                                        }
                                    }
                                }

                                Break
                            }

                            Notify (\_TZ.TZ01, 0x81)
                        }
                    }

                    Method (_Q96, 0, Serialized)  // _Qxx: EC Query
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        If (LEqual (ECOK, One))
                        {
                            Store (DMST, Local0)
                            While (One)
                            {
                                Store (Local0, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (Zero, PSVD)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Store (0x21, PSVD)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Store (0x15, PSVD)
                                        }
                                    }
                                }

                                Break
                            }

                            Notify (\_TZ.TZ01, 0x81)
                            ^^^^WMID.GWEV (0x0A, Zero)
                        }
                    }

                    Method (_Q99, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        TSMI (0xD5, One)
                    }

                    Method (_Q9A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^WMID.GWEV (0x0B, One)
                    }

                    Method (_Q9B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^WMID.GWEV (0x0B, Zero)
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        SMW0,   16
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        SMB0,   8
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD0,   64
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD1,   128
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD2,   192
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD3,   256
                    }

                    Mutex(MUT0, 0)
                    Mutex(MUT1, 0)
                    Method (SMRD, 4, NotSerialized)
                    {
                        If (LNot (ECOK))
                        {
                            Return (0xFF)
                        }

                        If (LNotEqual (Arg0, 0x07))
                        {
                            If (LNotEqual (Arg0, 0x09))
                            {
                                If (LNotEqual (Arg0, 0x0B))
                                {
                                    If (LNotEqual (Arg0, 0x47))
                                    {
                                        Return (0x19)
                                    }
                                }
                            }
                        }

                        Acquire (MUT0, 0xFFFF)
                        Store (0x04, Local0)
                        While (LGreater (Local0, One))
                        {
                            And (SMST, 0x40, SMST)
                            Store (Arg2, SMCM)
                            Store (Arg1, SMAD)
                            Store (Arg0, SMPR)
                            Store (Zero, Local3)
                            While (LNot (And (SMST, 0xBF, Local1)))
                            {
                                Sleep (0x02)
                                Increment (Local3)
                                If (LEqual (Local3, 0x32))
                                {
                                    And (SMST, 0x40, SMST)
                                    Store (Arg2, SMCM)
                                    Store (Arg1, SMAD)
                                    Store (Arg0, SMPR)
                                    Store (Zero, Local3)
                                }
                            }

                            If (LEqual (Local1, 0x80))
                            {
                                Store (Zero, Local0)
                            }
                            Else
                            {
                                Decrement (Local0)
                            }
                        }

                        If (Local0)
                        {
                            Store (And (Local1, 0x1F), Local0)
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x07))
                            {
                                Store (SMB0, Arg3)
                            }

                            If (LEqual (Arg0, 0x47))
                            {
                                Store (SMB0, Arg3)
                            }

                            If (LEqual (Arg0, 0x09))
                            {
                                Store (SMW0, Arg3)
                            }

                            If (LEqual (Arg0, 0x0B))
                            {
                                Store (BCNT, Local3)
                                ShiftRight (0x0100, 0x03, Local2)
                                If (LGreater (Local3, Local2))
                                {
                                    Store (Local2, Local3)
                                }

                                If (LLess (Local3, 0x11))
                                {
                                    Store (FLD1, Local2)
                                }
                                Else
                                {
                                    If (LLess (Local3, 0x19))
                                    {
                                        Store (FLD2, Local2)
                                    }
                                    Else
                                    {
                                        Store (FLD3, Local2)
                                    }
                                }

                                Increment (Local3)
                                Store (Buffer (Local3) {}, Local4)
                                Decrement (Local3)
                                Store (Zero, Local5)
                                While (LGreater (Local3, Local5))
                                {
                                    GBFE (Local2, Local5, RefOf (Local6))
                                    PBFE (Local4, Local5, Local6)
                                    Increment (Local5)
                                }

                                PBFE (Local4, Local5, Zero)
                                Store (Local4, Arg3)
                            }
                        }

                        Release (MUT0)
                        Return (Local0)
                    }

                    Method (SMWR, 4, NotSerialized)
                    {
                        If (LNot (ECOK))
                        {
                            Return (0xFF)
                        }

                        If (LNotEqual (Arg0, 0x06))
                        {
                            If (LNotEqual (Arg0, 0x08))
                            {
                                If (LNotEqual (Arg0, 0x0A))
                                {
                                    If (LNotEqual (Arg0, 0x46))
                                    {
                                        Return (0x19)
                                    }
                                }
                            }
                        }

                        Acquire (MUT0, 0xFFFF)
                        Store (0x04, Local0)
                        While (LGreater (Local0, One))
                        {
                            If (LEqual (Arg0, 0x06))
                            {
                                Store (Arg3, SMB0)
                            }

                            If (LEqual (Arg0, 0x46))
                            {
                                Store (Arg3, SMB0)
                            }

                            If (LEqual (Arg0, 0x08))
                            {
                                Store (Arg3, SMW0)
                            }

                            If (LEqual (Arg0, 0x0A))
                            {
                                Store (Arg3, SMD0)
                            }

                            And (SMST, 0x40, SMST)
                            Store (Arg2, SMCM)
                            Store (Arg1, SMAD)
                            Store (Arg0, SMPR)
                            Store (Zero, Local3)
                            While (LNot (And (SMST, 0xBF, Local1)))
                            {
                                Sleep (0x02)
                                Increment (Local3)
                                If (LEqual (Local3, 0x32))
                                {
                                    And (SMST, 0x40, SMST)
                                    Store (Arg2, SMCM)
                                    Store (Arg1, SMAD)
                                    Store (Arg0, SMPR)
                                    Store (Zero, Local3)
                                }
                            }

                            If (LEqual (Local1, 0x80))
                            {
                                Store (Zero, Local0)
                            }
                            Else
                            {
                                Decrement (Local0)
                            }
                        }

                        If (Local0)
                        {
                            Store (And (Local1, 0x1F), Local0)
                        }

                        Release (MUT0)
                        Return (Local0)
                    }

                    Method (GSHK, 0, Serialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (SFHK, Local0)
                        }

                        Return (Local0)
                    }

                    Method (SSHK, 1, Serialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (Arg0, SFHK)
                        }
                    }

                    Method (CPUS, 1, NotSerialized)
                    {
                        Store (Arg0, \_PR.CPU0._PPC)
                        If (LEqual (TCNT, 0x08))
                        {
                            Notify (\_PR.CPU0, 0x80)
                            Notify (\_PR.CPU1, 0x80)
                            Notify (\_PR.CPU2, 0x80)
                            Notify (\_PR.CPU3, 0x80)
                            Notify (\_PR.CPU4, 0x80)
                            Notify (\_PR.CPU5, 0x80)
                            Notify (\_PR.CPU6, 0x80)
                            Notify (\_PR.CPU7, 0x80)
                        }

                        If (LEqual (TCNT, 0x04))
                        {
                            Notify (\_PR.CPU0, 0x80)
                            Notify (\_PR.CPU1, 0x80)
                            Notify (\_PR.CPU2, 0x80)
                            Notify (\_PR.CPU3, 0x80)
                        }

                        If (LEqual (TCNT, 0x02))
                        {
                            Notify (\_PR.CPU0, 0x80)
                            Notify (\_PR.CPU1, 0x80)
                        }
                        Else
                        {
                            Notify (\_PR.CPU0, 0x80)
                        }
                    }

                    Method (ECMI, 0, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            OSTD ()
                            Store (Zero, CLOW)
                            Subtract (PPCM, One, CMAX)
                            Store (FNKY, ACKY)
                            If (LEqual (SMA4, One))
                            {
                                Store (Zero, SMSZ)
                            }
                            Else
                            {
                                Store (One, SMSZ)
                            }

                            ULID (Zero)
                            _Q92 ()
                            ^^^ACEL.INIT ()
                        }
                    }

                    Method (RENE, 2, NotSerialized)
                    {
                        Store (Zero, Local0)
                        If (LEqual (ECOK, One))
                        {
                            Store (Arg0, EI01)
                            Store (Arg1, EI02)
                            Store (EI03, Local0)
                        }

                        Return (Local0)
                    }

                    Method (WENE, 3, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (Arg0, EI01)
                            Store (Arg1, EI02)
                            Store (Arg2, EI03)
                        }
                    }

                    Method (ECMD, 3, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            WENE (Arg0, Arg1, Arg2)
                            While (EI03)
                            {
                                Stall (0xFF)
                            }

                            Store (RENE (0xFB, Zero), Local0)
                            Return (Local0)
                        }
                        Return (Zero)
                    }

                    Method (TBMC, 1, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (\_PR.CPU0._PPC, Local0)
                            Subtract (PPCM, One, Local1)
                            If (LAnd (LEqual (TBST, One), LEqual (Arg0, Zero)))
                            {
                                If (LLess (Local0, Local1))
                                {
                                    Increment (Local0)
                                    CPUS (Local0)
                                    Store (Local0, CLOW)
                                }

                                Store (Zero, TBST)
                            }

                            If (LAnd (LEqual (TBST, Zero), LEqual (Arg0, One)))
                            {
                                Store (Zero, Local0)
                                CPUS (Local0)
                                Store (Local0, CLOW)
                                Store (One, TBST)
                            }
                        }
                    }

                    Method (CBCD, 0, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (MBDC, Local0)
                            And (Local0, 0xE4, Local0)
                            Store (Local0, MBDC)
                        }
                    }

                    Method (ULID, 1, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            If (LEqual (ECLS, One))
                            {
                                Store (Zero, Local0)
                            }
                            Else
                            {
                                Store (One, Local0)
                            }

                            If (IGDS)
                            {
                                If (LEqual (Arg0, One))
                                {
                                    If (LNotEqual (Local0, LIDS))
                                    {
                                        If (^^^IGPU.GLID (Local0))
                                        {
                                            Or (0x80000000, ^^^IGPU.CLID, ^^^IGPU.CLID)
                                        }
                                    }
                                }
                            }

                            Store (Local0, LIDS)
                        }
                    }

                    Method (OSTD, 0, NotSerialized)
                    {
                        If (LEqual (ECOK, One))
                        {
                            Store (Zero, W7OS)
                            Store (Zero, SUSE)
                            Store (Zero, RFLG)
                            If (LGreaterEqual (OSYS, 0x07D0))
                            {
                                If (LGreaterEqual (OSYS, 0x07D9))
                                {
                                    Store (One, W7OS)
                                }
                            }
                            Else
                            {
                                If (LEqual (OSYS, 0x03E8))
                                {
                                    Store (One, RFLG)
                                }

                                If (LEqual (OSYS, 0x03E9))
                                {
                                    Store (One, SUSE)
                                }
                            }
                        }
                        Else
                        {
                            Store (Zero, W7OS)
                            Store (Zero, SUSE)
                            Store (Zero, RFLG)
                        }
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate()
{
    IRQNoFlags() { 0, 8, 11, 15 }

                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y10)
                    })

                    

                    
                    Name (_STA, 0x0F)
                    Method (_CRS, 0, NotSerialized)
                    {
                        Return (BUF0)
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x54,               // Length
                            )
                        IO (Decode16,
                            0x0458,             // Range Minimum
                            0x0458,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0380,             // Range Minimum
                            0x0380,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        
                    })
                    OperationRegion (CMS0, SystemCMOS, Zero, 0x40)
                    Field (CMS0, ByteAcc, NoLock, Preserve)
                    {
                        RTSE,   8, 
                        Offset (0x02), 
                        RTMN,   8, 
                        Offset (0x04), 
                        RTHR,   8, 
                        Offset (0x06), 
                        RTDY,   8, 
                        RTDE,   8
                    }
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        
                    })
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("HPQ8001"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1F, 
                        0x03
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, KBWK)
                    }
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (LEqual (BID4, Zero))
                        {
                            Return ("*SYN1E82")
                        }
                        Else
                        {
                            If (LEqual (BID4, One))
                            {
                                Return ("*SYN1E83")
                            }
                            Else
                            {
                                Return ("*SYN1E82")
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1E00"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13")
                    })
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1F, 
                        0x03
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, TPWK)
                    }
                }
            }

            Device (ACEL)
            {
                Name (_HID, EisaId ("HPQ0004"))  // _HID: Hardware ID
                Name (DVPN, 0xFF)
                Name (CNST, 0xFF)
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Edge, ActiveLow, Exclusive, ,, )
                    {
                        0x00000017,
                    }
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (^^LPCB.EC0.ECOK, One))
                    {
                        If (LEqual (DVPN, 0xFF))
                        {
                            Store (0x0F, Local0)
                            Store (^^LPCB.EC0.SMRD (0x47, 0x50, 0x0F, RefOf (Local1)), Local2)
                            If (Or (LNotEqual (Local1, 0x33), LNotEqual (Local2, Zero)))
                            {
                                Store (Zero, Local0)
                            }

                            Store (Local0, DVPN)
                        }
                    }

                    Return (DVPN)
                }

                Method (INIT, 0, Serialized)
                {
                    If (_STA ())
                    {
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x20, 0x5F)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x21, 0x32)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x32, 0x16)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x33, 0x02)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x30, 0x95)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x36, 0x07)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x37, 0x05)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x34, 0x7F)
                        ^^LPCB.EC0.SMRD (0x47, 0x50, 0x24, RefOf (Local0))
                        And (Local0, 0xBF, Local0)
                        Or (Local0, 0x02, Local0)
                        ^^LPCB.EC0.SMWR (0x46, 0x50, 0x24, Local0)
                        Store (0xFF, CNST)
                        ADJT ()
                        Store (One, ^^LPCB.EC0.PLGS)
                    }
                }

                Method (ADJT, 0, Serialized)
                {
                    If (_STA ())
                    {
                        If (LEqual (^^^LID0._LID (), Zero))
                        {
                            If (LNotEqual (CNST, One))
                            {
                                Store (One, CNST)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x36, 0x15)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x37, One)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x34, 0x2A)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x24, Zero)
                                Store (Zero, ^^LPCB.EC0.PLGS)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x22, 0x20)
                            }
                        }
                        Else
                        {
                            If (LNotEqual (CNST, Zero))
                            {
                                Store (Zero, CNST)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x36, 0x07)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x37, 0x05)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x34, 0x7F)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x24, 0x02)
                                Store (One, ^^LPCB.EC0.PLGS)
                                ^^LPCB.EC0.SMWR (0x46, 0x50, 0x22, 0x40)
                            }
                        }
                    }
                }

                Method (CLRI, 0, Serialized)
                {
                    Store (Zero, Local0)
                    If (LEqual (^^LPCB.EC0.ECOK, One))
                    {
                        If (LEqual (^^LPCB.EC0.SW2S, Zero))
                        {
                            If (LEqual (^^^BAT0._STA (), 0x1F))
                            {
                                If (LLessEqual (^^LPCB.EC0.MBRM, 0x96))
                                {
                                    Store (One, Local0)
                                }
                            }
                        }
                    }

                    Return (Local0)
                }

                Method (ALRD, 1, Serialized)
                {
                    Store (Zero, Local0)
                    If (LEqual (^^LPCB.EC0.ECOK, One))
                    {
                        ^^LPCB.EC0.SMRD (0x47, 0x50, Arg0, RefOf (Local0))
                    }

                    Return (Local0)
                }

                Method (ALWR, 2, Serialized)
                {
                    Store (Zero, Local0)
                    If (LEqual (^^LPCB.EC0.ECOK, One))
                    {
                        Store (^^LPCB.EC0.SMWR (0x46, 0x50, Arg0, Arg1), Local0)
                    }

                    Return (Local0)
                }

                Method (ALED, 1, Serialized)
                {
                    If (Arg0)
                    {
                        Store (Zero, GLED)
                    }
                    Else
                    {
                        Store (One, GLED)
                    }
                }

                Method (ALID, 1, Serialized)
                {
                    Store (One, Local1)
                    Store (^^^LID0._LID (), Local0)
                    ^^LPCB.EC0.SMRD (0x47, 0x50, 0x24, RefOf (Local1))
                    And (Local1, 0xBF, Local1)
                    If (LEqual (Local0, One))
                    {
                        Or (Local1, 0x02, Local1)
                    }
                    Else
                    {
                        And (Local1, 0xFD, Local1)
                    }

                    ^^LPCB.EC0.SMWR (0x46, 0x50, 0x24, Local1)
                    Return (Local0)
                }

                Method (ADSN, 0, Serialized)
                {
                    Store (Zero, Local0)
                    Return (Local0)
                }
            }

            Device (WLBT)
            {
                Name (_HID, EisaId ("HPQ6001"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LGreaterEqual (OSYS, 0x07DC))
                    {
                        Store (One, WWLS)
                        Store (One, WBTS)
                        If (LEqual (WLDS, One))
                        {
                            Store (One, WLOF)
                        }

                        If (LEqual (BTDS, One))
                        {
                            Store (One, BTOF)
                        }

                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
            Device (IMEI)
            {
                Name (_ADR, 0x00160000)
            }
        }

        Device (WMID)
        {
            Name (WCDS, Package (0x38)
            {
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                0x0C, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x08, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x04, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x80, 
                0x80, 
                0x04
            })
            Method (CSTA, 0, NotSerialized)
            {
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }
                    }, Local0)
                Store (One, IAOR)
                Store (0xC6, SSMP)
                If (LEqual (IAOR, One))
                {
                    Store (0x1C, Index (Local0, Zero))
                }
                Else
                {
                    Store (IAOR, Index (Local0, Zero))
                    Store (And (CDAT, 0xFF), Index (DerefOf (Index (Local0, 0x02)), Zero
                        ))
                }

                Return (Local0)
            }

            Method (CACT, 1, NotSerialized)
            {
                Store (Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, Local0)
                Store (0x02, IAOR)
                Store (Arg0, CDAT)
                Store (0xC6, SSMP)
                If (LEqual (IAOR, 0x02))
                {
                    Store (0x1C, Index (Local0, Zero))
                }
                Else
                {
                    Store (IAOR, Index (Local0, Zero))
                }

                Store (Zero, CDAT)
                Return (Local0)
            }

            Method (CDAC, 1, NotSerialized)
            {
                Store (Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, Local0)
                Store (0x03, IAOR)
                Store (Arg0, CDAT)
                Store (0xC6, SSMP)
                If (LEqual (IAOR, 0x03))
                {
                    Store (0x1C, Index (Local0, Zero))
                }
                Else
                {
                    Store (IAOR, Index (Local0, Zero))
                }

                Store (Zero, CDAT)
                Return (Local0)
            }

            Method (HWMC, 2, NotSerialized)
            {
                CreateDWordField (Arg1, Zero, SGIN)
                CreateDWordField (Arg1, 0x04, COMD)
                CreateDWordField (Arg1, 0x08, CMDT)
                CreateDWordField (Arg1, 0x0C, DSZI)
                CreateByteField (Arg1, 0x10, D008)
                CreateByteField (Arg1, 0x11, D009)
                CreateDWordField (Arg1, 0x10, D032)
                If (LGreater (DSZI, Zero))
                {
                    CreateField (Arg1, 0x80, Multiply (DSZI, 0x08), D128)
                }

                If (LEqual (Arg0, One))
                {
                    Store (Zero, Local0)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Store (0x04, Local0)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Store (0x80, Local0)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Store (0x0400, Local0)
                }

                If (LEqual (Arg0, 0x05))
                {
                    Store (0x1000, Local0)
                }

                Store (Buffer (Add (0x08, Local0)) {}, Local1)
                CreateDWordField (Local1, Zero, SIOU)
                CreateDWordField (Local1, 0x04, RETC)
                Store (DSZI, Local5)
                If (LGreater (DSZI, 0x02F0))
                {
                    Store (0x02F0, Local5)
                }

                CreateField (Arg1, Zero, Multiply (Add (Local5, 0x10), 0x08), DAIN)
                Store (0x4C494146, SIOU)
                Store (0x02, RETC)
                If (LEqual (SGIN, 0x55434553))
                {
                    Store (0x03, RETC)
                    If (LEqual (COMD, One))
                    {
                        Store (0x04, RETC)
                        If (LEqual (CMDT, 0x07))
                        {
                            If (DSZI)
                            {
                                Store (DerefOf (Index (Arg1, 0x10)), Local3)
                                Store (GBIF (Local3), Local2)
                                Store (Zero, RETC)
                            }
                            Else
                            {
                                Store (0x05, RETC)
                            }
                        }

                        If (LEqual (CMDT, 0x08))
                        {
                            Store (GBBT (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x09))
                        {
                            Store (GHKS (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x0A))
                        {
                            Store (GHKF (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x0C))
                        {
                            Store (GBBV (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x0D))
                        {
                            Store (GFRC (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x0F))
                        {
                            Store (GSAS (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x10))
                        {
                            Store (GWSD (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x1B))
                        {
                            If (LAnd (LLess (OSKU, 0x03), LGreater (OSKU, Zero)))
                            {
                                Store (GWDI (), Local2)
                                Store (Zero, RETC)
                            }
                        }

                        If (LEqual (CMDT, 0x1D))
                        {
                            Store (GSDC (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x1E))
                        {
                            Store (GBUS (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x1F))
                        {
                            Store (GBCC (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x28))
                        {
                            If (LEqual (DSZI, 0x04))
                            {
                                If (LOr (LOr (LOr (LAnd (LGreaterEqual (D008, Zero), LLessEqual (D008, 
                                    0x06)), LAnd (LGreaterEqual (D008, 0x10), LLessEqual (D008, 0x15))), LAnd (LGreaterEqual (
                                    D008, 0x20), LLessEqual (D008, 0x25))), LEqual (D008, 0xAA)))
                                {
                                    Store (GTDC (D008), Local2)
                                    Store (Zero, RETC)
                                }
                                Else
                                {
                                    Store (0x06, RETC)
                                }
                            }
                            Else
                            {
                                Store (0x05, RETC)
                            }
                        }

                        If (LEqual (CMDT, 0x29))
                        {
                            Store (GFCS (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x2A))
                        {
                            Store (GPES (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x2B))
                        {
                            Store (GBCO (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x2C))
                        {
                            Store (GTCS (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x36))
                        {
                            Store (GPST (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x37))
                        {
                            Store (GBCT (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x38))
                        {
                            Store (GBST (), Local2)
                            Store (Zero, RETC)
                        }
                    }

                    If (LEqual (COMD, 0x02))
                    {
                        Store (0x04, RETC)
                        If (LAnd (LGreater (CMDT, Zero), LLessEqual (CMDT, 0x38)))
                        {
                            If (LLess (DSZI, DerefOf (Index (WCDS, Subtract (CMDT, One)))))
                            {
                                Store (0x05, RETC)
                            }
                            Else
                            {
                                CreateDWordField (Arg1, 0x10, DDWD)
                                If (LEqual (CMDT, 0x09))
                                {
                                    Store (SHKS (DDWD), Local2)
                                    Store (Zero, RETC)
                                }

                                If (LEqual (CMDT, 0x0A))
                                {
                                    Store (SHKF (DDWD), Local2)
                                    Store (Zero, RETC)
                                }

                                If (LEqual (CMDT, 0x10))
                                {
                                    If (LNotEqual (DSZI, DerefOf (Index (WCDS, Subtract (CMDT, One)))))
                                    {
                                        Store (0x05, RETC)
                                    }
                                    Else
                                    {
                                        CreateField (Arg1, 0x80, 0x40, WSDB)
                                        Store (SWSD (WSDB), Local2)
                                        Store (Zero, RETC)
                                    }
                                }

                                If (LEqual (CMDT, 0x1B))
                                {
                                    If (LAnd (LLess (OSKU, 0x03), LGreater (OSKU, Zero)))
                                    {
                                        CreateByteField (Arg1, 0x10, SWD0)
                                        CreateByteField (Arg1, 0x11, SWD1)
                                        CreateByteField (Arg1, 0x12, SWD2)
                                        CreateByteField (Arg1, 0x13, SWD3)
                                        Store (SWDS (SWD0, SWD1, SWD2, SWD3), Local2)
                                        Store (Zero, RETC)
                                    }
                                }

                                If (LEqual (CMDT, 0x1D))
                                {
                                    If (LNotEqual (DSZI, DerefOf (Index (WCDS, Subtract (CMDT, One)))))
                                    {
                                        Store (0x05, RETC)
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, SDC0)
                                        CreateByteField (Arg1, 0x11, SDC1)
                                        CreateByteField (Arg1, 0x12, SDC2)
                                        CreateByteField (Arg1, 0x13, SDC3)
                                        Store (SSDC (SDC0, SDC1, SDC2, SDC3), Local2)
                                        Store (Zero, RETC)
                                    }
                                }

                                If (LEqual (CMDT, 0x1E))
                                {
                                    Store (SBUS (DDWD), Local2)
                                    Store (Zero, RETC)
                                }

                                If (LEqual (CMDT, 0x1F))
                                {
                                    If (LNotEqual (DSZI, DerefOf (Index (WCDS, Subtract (CMDT, One)))))
                                    {
                                        Store (0x05, RETC)
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, BCC0)
                                        CreateByteField (Arg1, 0x11, BCC1)
                                        CreateByteField (Arg1, 0x12, BCC2)
                                        CreateByteField (Arg1, 0x13, BCC3)
                                        Store (SBCC (BCC0, BCC1, BCC2, BCC3), Local2)
                                        Store (Zero, RETC)
                                    }
                                }

                                If (LEqual (CMDT, 0x28))
                                {
                                    If (LEqual (DSZI, 0x80))
                                    {
                                        If (And (LLessEqual (D009, One), LOr (LOr (LAnd (LGreaterEqual (D008, 
                                            0x10), LLessEqual (D008, 0x15)), LAnd (LGreaterEqual (D008, 0x20), LLessEqual (D008, 
                                            0x25))), LEqual (D008, 0xAA))))
                                        {
                                            CreateField (Arg1, 0x80, 0x0400, TDBU)
                                            Store (STDC (D008, TDBU), Local2)
                                            Store (Zero, RETC)
                                        }
                                        Else
                                        {
                                            Store (0x06, RETC)
                                        }
                                    }
                                    Else
                                    {
                                        Store (0x05, RETC)
                                    }
                                }

                                If (LEqual (CMDT, 0x29))
                                {
                                    Store (SFCS (DDWD), Local2)
                                    Store (Zero, RETC)
                                }

                                If (LEqual (CMDT, 0x2A))
                                {
                                    Store (SPES (DDWD), Local2)
                                    Store (Zero, RETC)
                                }

                                If (LEqual (CMDT, 0x2B))
                                {
                                    If (LNotEqual (DSZI, DerefOf (Index (WCDS, Subtract (CMDT, One)))))
                                    {
                                        Store (0x05, RETC)
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, BCO0)
                                        CreateByteField (Arg1, 0x11, BCO1)
                                        CreateByteField (Arg1, 0x12, BCO2)
                                        CreateByteField (Arg1, 0x13, BCO3)
                                        Store (SBCO (BCO0, BCO1, BCO2, BCO3), Local2)
                                        Store (Zero, RETC)
                                    }
                                }

                                If (LEqual (CMDT, 0x2C))
                                {
                                    If (LNotEqual (DSZI, DerefOf (Index (WCDS, Subtract (CMDT, One)))))
                                    {
                                        Store (0x05, RETC)
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, STC0)
                                        CreateByteField (Arg1, 0x11, STC1)
                                        CreateByteField (Arg1, 0x12, STC2)
                                        CreateByteField (Arg1, 0x13, STC3)
                                        Store (STCS (STC0, STC1, STC2, STC3), Local2)
                                        Store (Zero, RETC)
                                    }
                                }

                                If (LEqual (CMDT, 0x36))
                                {
                                    Store (SPST (D128), Local2)
                                    Store (Zero, RETC)
                                }

                                If (LEqual (CMDT, 0x37))
                                {
                                    Store (SBCT (D128), Local2)
                                    Store (Zero, RETC)
                                }

                                If (LEqual (CMDT, 0x38))
                                {
                                    CreateByteField (Arg1, 0x10, BST0)
                                    CreateByteField (Arg1, 0x11, BST1)
                                    CreateByteField (Arg1, 0x12, BST2)
                                    CreateByteField (Arg1, 0x13, BST3)
                                    Store (SBST (BST0, BST1, BST2, BST3), Local2)
                                    Store (Zero, RETC)
                                }
                            }
                        }
                    }

                    If (LEqual (COMD, 0x00020002))
                    {
                        If (LEqual (CMDT, One))
                        {
                            Store (CSTA (), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x02))
                        {
                            Store (CACT (DAIN), Local2)
                            Store (Zero, RETC)
                        }

                        If (LEqual (CMDT, 0x03))
                        {
                            Store (CDAC (DAIN), Local2)
                            Store (Zero, RETC)
                        }
                    }
                }

                If (LEqual (RETC, Zero))
                {
                    Store (DerefOf (Index (Local2, Zero)), RETC)
                    If (LEqual (RETC, Zero))
                    {
                        If (LLessEqual (DerefOf (Index (Local2, One)), Local0))
                        {
                            Store (Zero, Local0)
                            While (LLess (Local0, DerefOf (Index (Local2, One))))
                            {
                                Store (DerefOf (Index (DerefOf (Index (Local2, 0x02)), Local0)), Index (Local1, 
                                    Add (Local0, 0x08)))
                                Increment (Local0)
                            }

                            Store (0x53534150, SIOU)
                        }
                        Else
                        {
                            Store (0x05, RETC)
                        }
                    }
                }

                Return (Local1)
            }

            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WMIF, Zero)
            Name (WEI0, Zero)
            Name (WED0, Zero)
            Name (WEI1, Zero)
            Name (WED1, Zero)
            Name (WEVI, Zero)
            Name (WEVD, Zero)
            Name (BUFF, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                         
            })
            CreateByteField (BUFF, Zero, OB0)
            CreateByteField (BUFF, One, OB1)
            CreateByteField (BUFF, 0x02, OB2)
            CreateByteField (BUFF, 0x03, OB3)
            Name (WMBF, Buffer (0x80)
            {
                 0x00                                           
            })
            CreateByteField (WMBF, Zero, HWB0)
            CreateByteField (WMBF, One, HWB1)
            CreateByteField (WMBF, 0x02, HWB2)
            CreateByteField (WMBF, 0x03, HWB3)
            Name (_WDG, Buffer (0x0104)
            {
                /* 0000 */  0x34, 0xF0, 0xB7, 0x5F, 0x63, 0x2C, 0xE9, 0x45,
                /* 0008 */  0xBE, 0x91, 0x3D, 0x44, 0xE2, 0xC7, 0x07, 0xE4,
                /* 0010 */  0x41, 0x44, 0x01, 0x02, 0x79, 0x42, 0xF2, 0x95,
                /* 0018 */  0x7B, 0x4D, 0x34, 0x43, 0x93, 0x87, 0xAC, 0xCD,
                /* 0020 */  0xC6, 0x7E, 0xF6, 0x1C, 0x80, 0x00, 0x01, 0x08,
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0038 */  0x41, 0x45, 0x01, 0x00, 0xD4, 0x2B, 0x99, 0xD0,
                /* 0040 */  0x7C, 0xA4, 0xFE, 0x4E, 0xB0, 0x72, 0x32, 0x4A,
                /* 0048 */  0xEC, 0x92, 0x29, 0x6C, 0x42, 0x43, 0x01, 0x00,
                /* 0050 */  0xEB, 0x91, 0x4C, 0x1F, 0x5C, 0xDC, 0x0B, 0x46,
                /* 0058 */  0x95, 0x1D, 0xC7, 0xCB, 0x9B, 0x4B, 0x8D, 0x5E,
                /* 0060 */  0x42, 0x41, 0x01, 0x02, 0x49, 0x4B, 0x11, 0x2D,
                /* 0068 */  0xFB, 0x2D, 0x30, 0x41, 0xB8, 0xFE, 0x4A, 0x3C,
                /* 0070 */  0x09, 0xE7, 0x51, 0x33, 0x42, 0x4B, 0x04, 0x00,
                /* 0078 */  0xE3, 0x08, 0x8D, 0x98, 0xF4, 0x68, 0x35, 0x4C,
                /* 0080 */  0xAF, 0x3E, 0x6A, 0x1B, 0x81, 0x06, 0xF8, 0x3C,
                /* 0088 */  0x42, 0x44, 0x00, 0x00, 0x46, 0x97, 0xEA, 0x14,
                /* 0090 */  0x1F, 0xCE, 0x98, 0x40, 0xA0, 0xE0, 0x70, 0x45,
                /* 0098 */  0xCB, 0x4D, 0xA7, 0x45, 0x42, 0x45, 0x00, 0x00,
                /* 00A0 */  0x28, 0x20, 0x2F, 0x32, 0x84, 0x0F, 0x01, 0x49,
                /* 00A8 */  0x98, 0x8E, 0x01, 0x51, 0x76, 0x04, 0x9E, 0x2D,
                /* 00B0 */  0x42, 0x46, 0x01, 0x00, 0x3D, 0xDE, 0x32, 0x82,
                /* 00B8 */  0x3D, 0x66, 0x27, 0x43, 0xA8, 0xF4, 0xE2, 0x93,
                /* 00C0 */  0xAD, 0xB9, 0xBF, 0x05, 0x42, 0x47, 0x00, 0x00,
                /* 00C8 */  0x36, 0x64, 0x1F, 0x8F, 0x42, 0x9F, 0xC8, 0x42,
                /* 00D0 */  0xBA, 0xDC, 0x0E, 0x94, 0x24, 0xF2, 0x0C, 0x9A,
                /* 00D8 */  0x42, 0x48, 0x00, 0x00, 0x35, 0x64, 0x1F, 0x8F,
                /* 00E0 */  0x42, 0x9F, 0xC8, 0x42, 0xBA, 0xDC, 0x0E, 0x94,
                /* 00E8 */  0x24, 0xF2, 0x0C, 0x9A, 0x42, 0x49, 0x00, 0x00,
                /* 00F0 */  0xB6, 0x63, 0x4E, 0xDF, 0xBC, 0x3B, 0x58, 0x48,
                /* 00F8 */  0x97, 0x37, 0xC7, 0x4F, 0x82, 0xF8, 0x21, 0xF3,
                /* 0100 */  0x42, 0x4A, 0x00, 0x00                         
            })
            Method (WMAD, 3, Serialized)
            {
                Return (HWMC (Arg1, Arg2))
            }

            Method (GBIF, 1, NotSerialized)
            {
                Store ("HP WMI Command 0x7 (BIOS Read)", Debug)
                Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                If (LNot (^^PCI0.LPCB.EC0.ECOK))
                {
                    Store (Package (0x02)
                        {
                            0x0D, 
                            Zero
                        }, Local0)
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }

                If (Arg0)
                {
                    Store (Package (0x02)
                        {
                            0x06, 
                            Zero
                        }, Local0)
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }

                If (LNot (^^PCI0.LPCB.EC0.MBTS))
                {
                    Store (Package (0x02)
                        {
                            0x34, 
                            Zero
                        }, Local0)
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }

                If (LNotEqual (^^PCI0.LPCB.EC0.BTVD, One))
                {
                    Store (Package (0x02)
                        {
                            0x37, 
                            Zero
                        }, Local0)
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }
                Else
                {
                    If (LEqual (And (^^PCI0.LPCB.EC0.MBDC, 0x10), 0x10))
                    {
                        Store (Package (0x02)
                            {
                                0x36, 
                                Zero
                            }, Local0)
                        Sleep (0x96)
                        Release (^^PCI0.LPCB.EC0.MUT1)
                        Return (Local0)
                    }
                }

                Store (Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }, Local0)
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x18, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), One))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), Zero))
                Store (^^PCI0.LPCB.EC0.BFCC, Local1)
                ShiftRight (Local1, 0x05, Local1)
                ShiftLeft (Local1, 0x05, Local1)
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0F, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x05))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x04))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0C, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x07))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x06))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x17, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x09))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x08))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x08, RefOf (Local1))
                Subtract (Local1, 0x0AAA, Local1)
                Divide (Local1, 0x0A, Local2, Local1)
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x0B))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x0A))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x09, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x0D))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x0C))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0A, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x0F))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x0E))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x19, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x11))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x10))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x16, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x13))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x12))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3F, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x15))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x14))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3E, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x17))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x16))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3D, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x19))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x18))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3C, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x1B))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x1A))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x1C, RefOf (Local1))
                Store (ITOS (ToBCD (Local1)), Local3)
                Store (0x1C, Local2)
                Store (Zero, Local4)
                Store (SizeOf (Local3), Local1)
                While (Local1)
                {
                    GBFE (Local3, Local4, RefOf (Local5))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local5)
                    Decrement (Local1)
                    Increment (Local2)
                    Increment (Local4)
                }

                Store (0x20, Index (DerefOf (Index (Local0, 0x02)), Local2))
                Increment (Local2)
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x1B, RefOf (Local1))
                And (Local1, 0x1F, Local7)
                Store (ITOS (ToBCD (Local7)), Local6)
                And (Local1, 0x01E0, Local7)
                ShiftRight (Local7, 0x05, Local7)
                Store (ITOS (ToBCD (Local7)), Local5)
                ShiftRight (Local1, 0x09, Local7)
                Add (Local7, 0x07BC, Local7)
                Store (ITOS (ToBCD (Local7)), Local4)
                Store (0x02, Local1)
                Store (0x03, Local7)
                While (Local1)
                {
                    GBFE (Local5, Local7, RefOf (Local3))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local3)
                    Decrement (Local1)
                    Increment (Local2)
                    Increment (Local7)
                }

                Store ("/", Index (DerefOf (Index (Local0, 0x02)), Local2))
                Increment (Local2)
                Store (0x02, Local1)
                Store (0x03, Local7)
                While (Local1)
                {
                    GBFE (Local6, Local7, RefOf (Local3))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local3)
                    Decrement (Local1)
                    Increment (Local2)
                    Increment (Local7)
                }

                Store ("/", Index (DerefOf (Index (Local0, 0x02)), Local2))
                Increment (Local2)
                Store (0x04, Local1)
                Store (One, Local7)
                While (Local1)
                {
                    GBFE (Local4, Local7, RefOf (Local3))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local3)
                    Decrement (Local1)
                    Increment (Local2)
                    Increment (Local7)
                }

                Store (Zero, Index (DerefOf (Index (Local0, 0x02)), Local2))
                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x20, RefOf (Local1))
                Store (SizeOf (Local1), Local3)
                Store (0x2C, Local2)
                Store (Zero, Local4)
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local5)
                    Decrement (Local3)
                    Increment (Local2)
                    Increment (Local4)
                }

                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x70, RefOf (Local1))
                GBFE (Local1, Zero, RefOf (Local5))
                If (LEqual (Local5, 0x36))
                {
                    Store (SizeOf (Local1), Local3)
                    Store (0x3E, Local2)
                    Store (Zero, Local4)
                }
                Else
                {
                    Store (0x03, Local3)
                    Store (0x3E, Local2)
                    Store (Zero, Local4)
                    Store (Buffer (0x04)
                        {
                            "N/A"
                        }, Local1)
                }

                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local5)
                    Decrement (Local3)
                    Increment (Local2)
                    Increment (Local4)
                }

                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x21, RefOf (Local1))
                Store (SizeOf (Local1), Local3)
                Store (0x4F, Local2)
                Store (Zero, Local4)
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local5)
                    Decrement (Local3)
                    Increment (Local2)
                    Increment (Local4)
                }

                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x22, RefOf (Local1))
                Store (SizeOf (Local1), Local3)
                Store (0x56, Local2)
                Store (Zero, Local4)
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Index (Local0, 0x02)), Local2, Local5)
                    Decrement (Local3)
                    Increment (Local2)
                    Increment (Local4)
                }

                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, Zero, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x5B))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x5A))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x1B, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x5D))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x5C))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x14, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x5F))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x5E))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x15, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x61))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x60))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0B, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x63))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x62))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x11, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x65))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x64))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x12, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x67))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x66))
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x13, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, Index (DerefOf (Index (Local0, 0x02)), 0x69))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), 0x68))
                Store (One, Index (DerefOf (Index (Local0, 0x02)), 0x6A))
                Sleep (0x96)
                Release (^^PCI0.LPCB.EC0.MUT1)
                Return (Local0)
            }

            Method (GBBT, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x8 (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                            /* 0000 */  0x31, 0x01, 0x9B, 0x01, 0xB6, 0x01, 0xB7, 0x01,
                            /* 0008 */  0xAE, 0x01, 0xFF, 0xFF, 0x00, 0x00             
                        }
                    }, Local0)
                Return (Local0)
            }

            Method (GHKS, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x9 (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }, Local0)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Store (^^PCI0.LPCB.EC0.GSHK (), Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Release (^^PCI0.LPCB.EC0.MUT1)
                }

                Return (Local0)
            }

            Method (SHKS, 1, NotSerialized)
            {
                Store ("HP WMI Command 0x9 (BIOS Write)", Debug)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    ^^PCI0.LPCB.EC0.SSHK (Arg0)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GHKF, 0, NotSerialized)
            {
                Store ("HP WMI Command 0xA (BIOS Read)", Debug)
                Return (HKFR ())
            }

            Method (SHKF, 1, NotSerialized)
            {
                Store ("HP WMI Command 0xA (BIOS Write)", Debug)
                And (Arg0, 0xFF, Local1)
                And (Arg0, 0xFF00, Local3)
                ShiftRight (Local3, 0x08, Local2)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }, Local0)
                Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                Store (Local2, Index (DerefOf (Index (Local0, 0x02)), One))
                If (LEqual (Arg0, 0x01AE))
                {
                    If (LGreaterEqual (OSYS, 0x07D9))
                    {
                        If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                        {
                            Store (One, ^^PCI0.LPCB.EC0.RCDS)
                        }
                    }
                    Else
                    {
                        If (IGDS)
                        {
                            Store (Zero, Local3)
                            Store (0xAE, Index (DerefOf (Index (Local0, 0x02)), Zero))
                            Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                            If (LOr (LEqual (^^PCI0.IGPU.CADL, 0x0100), LEqual (^^PCI0.IGPU.CAL2, 0x0100)))
                            {
                                Or (Local3, 0x02, Local3)
                            }

                            If (LOr (LEqual (^^PCI0.IGPU.CADL, 0x0400), LEqual (^^PCI0.IGPU.CAL2, 0x0400)))
                            {
                                Or (Local3, One, Local3)
                            }

                            If (LOr (LEqual (^^PCI0.IGPU.CADL, 0x0300), LEqual (^^PCI0.IGPU.CAL2, 0x0300)))
                            {
                                Or (Local3, 0x10, Local3)
                            }

                            Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                            Store (Zero, Local3)
                            If (LOr (LEqual (^^PCI0.IGPU.NADL, 0x0100), LEqual (^^PCI0.IGPU.NDL2, 0x0100)))
                            {
                                Or (Local3, 0x02, Local3)
                            }

                            If (LOr (LEqual (^^PCI0.IGPU.NADL, 0x0400), LEqual (^^PCI0.IGPU.NDL2, 0x0400)))
                            {
                                Or (Local3, One, Local3)
                            }

                            If (LOr (LEqual (^^PCI0.IGPU.NADL, 0x0300), LEqual (^^PCI0.IGPU.NDL2, 0x0300)))
                            {
                                Or (Local3, 0x10, Local3)
                            }

                            Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                            ^^PCI0.IGPU.GHDS (Zero)
                        }
                    }
                }

                Return (Local0)
            }

            Method (HKFR, 0, NotSerialized)
            {
                Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }, Local0)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    Store (^^PCI0.LPCB.EC0.QBHK, Local1)
                    Store (Zero, ^^PCI0.LPCB.EC0.QBHK)
                }

                Release (^^PCI0.LPCB.EC0.MUT1)
                If (LEqual (Local1, 0x0D))
                {
                    Store ("Fn+ESC Pressed", Debug)
                    Store (0x31, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                    If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                    {
                        Store (Zero, ^^PCI0.LPCB.EC0.QBHK)
                    }
                }

                If (LEqual (Local1, One))
                {
                    Store ("Fn+F1 Pressed", Debug)
                    Store (0x9B, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                }

                If (LEqual (Local1, 0x02))
                {
                    Store ("Fn+F2 Pressed", Debug)
                    Notify (^^PCI0.IGPU.DD02, 0x87)
                    Sleep (0x32)
                    Store (0xB6, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                    If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                    {
                        Store (Zero, ^^PCI0.LPCB.EC0.QBHK)
                    }
                }

                If (LEqual (Local1, 0x03))
                {
                    Store ("Fn+F3 Pressed", Debug)
                    Notify (^^PCI0.IGPU.DD02, 0x86)
                    Sleep (0x32)
                    Store (0xB7, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                    If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                    {
                        Store (Zero, ^^PCI0.LPCB.EC0.QBHK)
                    }
                }

                If (LEqual (Local1, 0x04))
                {
                    Store ("Fn+F4 Pressed", Debug)
                    If (IGDS)
                    {
                        Store (Zero, Local3)
                        Store (0xAE, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                        If (LOr (LEqual (^^PCI0.IGPU.CADL, 0x0100), LEqual (^^PCI0.IGPU.CAL2, 0x0100)))
                        {
                            Or (Local3, 0x02, Local3)
                        }

                        If (LOr (LEqual (^^PCI0.IGPU.CADL, 0x0400), LEqual (^^PCI0.IGPU.CAL2, 0x0400)))
                        {
                            Or (Local3, One, Local3)
                        }

                        If (LOr (LEqual (^^PCI0.IGPU.CADL, 0x0300), LEqual (^^PCI0.IGPU.CAL2, 0x0300)))
                        {
                            Or (Local3, 0x10, Local3)
                        }

                        Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                        Store (Zero, Local3)
                        If (LOr (LEqual (^^PCI0.IGPU.NADL, 0x0100), LEqual (^^PCI0.IGPU.NDL2, 0x0100)))
                        {
                            Or (Local3, 0x02, Local3)
                        }

                        If (LOr (LEqual (^^PCI0.IGPU.NADL, 0x0400), LEqual (^^PCI0.IGPU.NDL2, 0x0400)))
                        {
                            Or (Local3, One, Local3)
                        }

                        If (LOr (LEqual (^^PCI0.IGPU.NADL, 0x0300), LEqual (^^PCI0.IGPU.NDL2, 0x0300)))
                        {
                            Or (Local3, 0x10, Local3)
                        }

                        Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                        ^^PCI0.IGPU.GHDS (Zero)
                    }
                }

                Return (Local0)
            }

            Method (GBBV, 0, NotSerialized)
            {
                Store ("HP WMI Command 0xC (BIOS Read)", Debug)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Store (Package (0x03)
                        {
                            Zero, 
                            0x04, 
                            Buffer (0x04) {}
                        }, Local0)
                    If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                    {
                        Store (^^PCI0.LPCB.EC0.QBBB, Local1)
                        Store (Zero, ^^PCI0.LPCB.EC0.QBBB)
                    }

                    If (LEqual (Local1, 0x04))
                    {
                        Store (0x42, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    If (LEqual (Local1, 0x20))
                    {
                        Store (0x8D, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    If (LEqual (Local1, 0x21))
                    {
                        Store (0x8E, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    If (LEqual (Local1, 0x22))
                    {
                        Store (0x8F, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    If (LEqual (Local1, 0x23))
                    {
                        Store (0x90, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    If (LEqual (Local1, 0x24))
                    {
                        Store (0x91, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    If (LEqual (Local1, 0x25))
                    {
                        Store (0x92, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    If (LEqual (Local1, 0x26))
                    {
                        Store (0x93, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                    }

                    Release (^^PCI0.LPCB.EC0.MUT1)
                }

                Return (Local0)
            }

            Method (GFRC, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x0D (BIOS Read)", Debug)
                Store (Zero, Local0)
                Store (Zero, Local1)
                Store (Zero, Local2)
                Store (Zero, Local3)
                Or (Local0, 0x02, Local0)
                Or (Local0, 0x10, Local0)
                Or (Local0, 0x20, Local0)
                Or (Local0, ShiftLeft (CAME, 0x07), Local0)
                Or (Local1, VTDT, Local1)
                Or (Local1, 0x08, Local1)
                Or (Local1, 0x10, Local1)
                Or (Local2, One, Local2)
                Or (Local2, 0x08, Local2)
                Or (Local3, ShiftLeft (SAPS, One), Local3)
                Or (Local3, 0x04, Local3)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }, Local4)
                Store (Local0, Index (DerefOf (Index (Local4, 0x02)), Zero))
                Store (Local1, Index (DerefOf (Index (Local4, 0x02)), One))
                Store (Local2, Index (DerefOf (Index (Local4, 0x02)), 0x02))
                Store (Local3, Index (DerefOf (Index (Local4, 0x02)), 0x03))
                Return (Local4)
            }

            Method (GSAS, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x0F (BIOS Read)", Debug)
                Store (Zero, Local0)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }
                    }, Local1)
                Store (Local0, Index (DerefOf (Index (Local1, 0x02)), Zero))
                Return (Local1)
            }

            Method (GWSD, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x10 (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }, Local0)
                Store (CMSR (0x4B), Local1)
                If (LEqual (Local1, 0x38))
                {
                    ShiftRight (CMSR (0x4C), 0x04, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    And (CMSR (0x4C), 0x0F, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), One))
                    ShiftRight (CMSR (0x4D), 0x04, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                    And (CMSR (0x4D), 0x0F, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                    ShiftRight (CMSR (0x4E), 0x04, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x04))
                    And (CMSR (0x4E), 0x0F, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x05))
                    ShiftRight (CMSR (0x4F), 0x04, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x06))
                    And (CMSR (0x4F), 0x0F, Local1)
                    Add (Local1, 0x30, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x07))
                }
                Else
                {
                    Store (WSD0, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (WSD1, Index (DerefOf (Index (Local0, 0x02)), One))
                    Store (WSD2, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                    Store (WSD3, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                    Store (WSD4, Index (DerefOf (Index (Local0, 0x02)), 0x04))
                    Store (WSD5, Index (DerefOf (Index (Local0, 0x02)), 0x05))
                    Store (WSD6, Index (DerefOf (Index (Local0, 0x02)), 0x06))
                    Store (WSD7, Index (DerefOf (Index (Local0, 0x02)), 0x07))
                }

                Return (Local0)
            }

            Method (SWSD, 1, NotSerialized)
            {
                Store ("HP WMI Command 0x10 (BIOS Write)", Debug)
                CMSW (0x4B, 0x38)
                Subtract (DerefOf (Index (Arg0, Zero)), 0x30, Local0)
                ShiftLeft (Local0, 0x04, Local0)
                Subtract (DerefOf (Index (Arg0, One)), 0x30, Local1)
                Or (Local0, Local1, Local0)
                CMSW (0x4C, Local0)
                Subtract (DerefOf (Index (Arg0, 0x02)), 0x30, Local0)
                ShiftLeft (Local0, 0x04, Local0)
                Subtract (DerefOf (Index (Arg0, 0x03)), 0x30, Local1)
                Or (Local0, Local1, Local0)
                CMSW (0x4D, Local0)
                Subtract (DerefOf (Index (Arg0, 0x04)), 0x30, Local0)
                ShiftLeft (Local0, 0x04, Local0)
                Subtract (DerefOf (Index (Arg0, 0x05)), 0x30, Local1)
                Or (Local0, Local1, Local0)
                CMSW (0x4E, Local0)
                Subtract (DerefOf (Index (Arg0, 0x06)), 0x30, Local0)
                ShiftLeft (Local0, 0x04, Local0)
                Subtract (DerefOf (Index (Arg0, 0x07)), 0x30, Local1)
                Or (Local0, Local1, Local0)
                CMSW (0x4F, Local0)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GWDI, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x1B (BIOS Read)", Debug)
                Store (One, WMIF)
                Store (Buffer (0x10) {}, Local0)
                Store (0x10, OB0)
                Store (Zero, OB1)
                Store (One, Index (Local0, Zero))
                Store (Zero, Index (Local0, One))
                Store (Zero, Index (Local0, 0x02))
                Store (Zero, Index (Local0, 0x03))
                Store (Zero, Index (Local0, 0x04))
                Store (Zero, Index (Local0, 0x05))
                Add (WLDS, BTDS, Local1)
                Store (Local1, Index (Local0, 0x06))
                If (LEqual (CCDS, One))
                {
                    Add (Local1, One, Local1)
                }

                If (LEqual (WMDS, One))
                {
                    Add (Local1, One, Local1)
                }

                Store (Local1, Index (Local0, 0x07))
                Store (Zero, Index (Local0, 0x08))
                Store (Zero, Index (Local0, 0x09))
                Store (Zero, Index (Local0, 0x0A))
                Store (Zero, Index (Local0, 0x0B))
                Store (Zero, Index (Local0, 0x0C))
                Store (Zero, Index (Local0, 0x0D))
                Store (Zero, Index (Local0, 0x0E))
                Store (Zero, Index (Local0, 0x0F))
                If (LEqual (WLDS, One))
                {
                    Store (Buffer (0x10) {}, Local1)
                    Store (Zero, Index (Local1, Zero))
                    Store (Zero, Index (Local1, One))
                    Store (And (WLVD, 0xFF), Index (Local1, 0x02))
                    Store (ShiftRight (WLVD, 0x08), Index (Local1, 0x03))
                    Store (And (WLDD, 0xFF), Index (Local1, 0x04))
                    Store (ShiftRight (WLDD, 0x08), Index (Local1, 0x05))
                    Store (And (WLSV, 0xFF), Index (Local1, 0x06))
                    Store (ShiftRight (WLSV, 0x08), Index (Local1, 0x07))
                    Store (And (WLSS, 0xFF), Index (Local1, 0x08))
                    Store (ShiftRight (WLSS, 0x08), Index (Local1, 0x09))
                    Store (OB1, Index (Local1, 0x0A))
                    Store (WLOF, Local2)
                    Or (Local2, ShiftLeft (WWLS, One), Local2)
                    Or (Local2, 0x04, Local2)
                    Or (Local2, ShiftLeft (BNLS, 0x03), Local2)
                    Store (Local2, Index (Local1, 0x0B))
                    Store (Zero, Index (Local1, 0x0C))
                    Store (Zero, Index (Local1, 0x0D))
                    Store (Zero, Index (Local1, 0x0E))
                    Store (Zero, Index (Local1, 0x0F))
                    Add (OB0, 0x10, OB0)
                    Concatenate (Local0, Local1, Local0)
                    If (LEqual (CCDS, One))
                    {
                        Store (Buffer (0x10) {}, Local1)
                        Store (One, Index (Local1, Zero))
                        Store (One, Index (Local1, One))
                        Store (And (BTVD, 0xFF), Index (Local1, 0x02))
                        Store (ShiftRight (BTVD, 0x08), Index (Local1, 0x03))
                        Store (And (BTDD, 0xFF), Index (Local1, 0x04))
                        Store (ShiftRight (BTDD, 0x08), Index (Local1, 0x05))
                        Store (Zero, Index (Local1, 0x06))
                        Store (Zero, Index (Local1, 0x07))
                        Store (Zero, Index (Local1, 0x08))
                        Store (Zero, Index (Local1, 0x09))
                        Store (OB1, Index (Local1, 0x0A))
                        Store (WLOF, Local2)
                        Or (Local2, ShiftLeft (WWLS, One), Local2)
                        Or (Local2, 0x04, Local2)
                        Or (Local2, ShiftLeft (BNLS, 0x03), Local2)
                        Store (Local2, Index (Local1, 0x0B))
                        Store (Zero, Index (Local1, 0x0C))
                        Store (Zero, Index (Local1, 0x0D))
                        Store (Zero, Index (Local1, 0x0E))
                        Store (Zero, Index (Local1, 0x0F))
                        Add (OB0, 0x10, OB0)
                        Concatenate (Local0, Local1, Local0)
                    }

                    If (LEqual (WMDS, One))
                    {
                        Store (Buffer (0x10) {}, Local1)
                        Store (0x02, Index (Local1, Zero))
                        Store (One, Index (Local1, One))
                        Store (And (WWVD, 0xFF), Index (Local1, 0x02))
                        Store (ShiftRight (WWVD, 0x08), Index (Local1, 0x03))
                        Store (And (WWDD, 0xFF), Index (Local1, 0x04))
                        Store (ShiftRight (WWDD, 0x08), Index (Local1, 0x05))
                        Store (Zero, Index (Local1, 0x06))
                        Store (Zero, Index (Local1, 0x07))
                        Store (Zero, Index (Local1, 0x08))
                        Store (Zero, Index (Local1, 0x09))
                        Store (OB1, Index (Local1, 0x0A))
                        Store (WLOF, Local2)
                        Or (Local2, ShiftLeft (WWLS, One), Local2)
                        Or (Local2, 0x04, Local2)
                        Or (Local2, ShiftLeft (BNLS, 0x03), Local2)
                        Store (Local2, Index (Local1, 0x0B))
                        Store (Zero, Index (Local1, 0x0C))
                        Store (Zero, Index (Local1, 0x0D))
                        Store (Zero, Index (Local1, 0x0E))
                        Store (Zero, Index (Local1, 0x0F))
                        Add (OB0, 0x10, OB0)
                        Concatenate (Local0, Local1, Local0)
                    }

                    Increment (OB1)
                }

                If (LEqual (BTDS, One))
                {
                    Store (Buffer (0x10) {}, Local1)
                    Store (One, Index (Local1, Zero))
                    Store (One, Index (Local1, One))
                    Store (And (BTVD, 0xFF), Index (Local1, 0x02))
                    Store (ShiftRight (BTVD, 0x08), Index (Local1, 0x03))
                    Store (And (BTDD, 0xFF), Index (Local1, 0x04))
                    Store (ShiftRight (BTDD, 0x08), Index (Local1, 0x05))
                    Store (Zero, Index (Local1, 0x06))
                    Store (Zero, Index (Local1, 0x07))
                    Store (Zero, Index (Local1, 0x08))
                    Store (Zero, Index (Local1, 0x09))
                    Store (OB1, Index (Local1, 0x0A))
                    Store (BTOF, Local2)
                    Or (Local2, ShiftLeft (WBTS, One), Local2)
                    Or (Local2, 0x04, Local2)
                    Or (Local2, ShiftLeft (BNLS, 0x03), Local2)
                    Store (Local2, Index (Local1, 0x0B))
                    Store (Zero, Index (Local1, 0x0C))
                    Store (Zero, Index (Local1, 0x0D))
                    Store (Zero, Index (Local1, 0x0E))
                    Store (Zero, Index (Local1, 0x0F))
                    Add (OB0, 0x10, OB0)
                    Concatenate (Local0, Local1, Local0)
                    Increment (OB1)
                }

                Store (Package (0x03) {}, Local1)
                Store (Zero, Index (Local1, Zero))
                Store (OB0, Index (Local1, One))
                Store (Local0, Index (Local1, 0x02))
                Return (Local1)
            }

            Method (SWDS, 4, NotSerialized)
            {
                Store ("HP WMI Command 0x1B (BIOS Write)", Debug)
                Store (Zero, Local0)
                If (LEqual (BNLS, One))
                {
                    If (LEqual (WLDS, One))
                    {
                        If (LEqual (Arg2, Local0))
                        {
                            Store (Arg3, WWLS)
                            Store (Arg3, WLOF)
                        }

                        Increment (Local0)
                    }

                    If (LEqual (BTDS, One))
                    {
                        If (LEqual (Arg2, Local0))
                        {
                            Store (Arg3, WBTS)
                            Store (Arg3, BTOF)
                        }

                        Increment (Local0)
                    }
                }

                If (LOr (LEqual (Arg2, 0xFE), LEqual (Arg2, 0xFF)))
                {
                    Store (Arg3, WWLS)
                    Store (Arg3, WLOF)
                    Store (Arg3, WBTS)
                    Store (Arg3, BTOF)
                    Store (Arg3, BNLS)
                }

                GWEV (0x05, Zero)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GSDC, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x1D (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }, Local0)
                Store (0x1D, HWCT)
                Store (One, HWBC)
                TSMI (0xC3, One)
                Store (HWBF, WMBF)
                Store (HWB0, Index (DerefOf (Index (Local0, 0x02)), Zero))
                Store (HWB1, Index (DerefOf (Index (Local0, 0x02)), One))
                Return (Local0)
            }

            Method (SSDC, 4, NotSerialized)
            {
                Store ("HP WMI Command 0x1D (BIOS Write)", Debug)
                Store (Arg0, HWB0)
                Store (0x1D, HWCT)
                Store (0x02, HWBC)
                Store (WMBF, HWBF)
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBUS, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x1E (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }, Local2)
                Store (0x1E, HWCT)
                Store (One, HWBC)
                TSMI (0xC3, One)
                Store (HWBF, WMBF)
                Store (HWB0, Index (DerefOf (Index (Local2, 0x02)), Zero))
                Store (HWB1, Index (DerefOf (Index (Local2, 0x02)), One))
                Return (Local2)
            }

            Method (SBUS, 1, NotSerialized)
            {
                Store ("HP WMI Command 0x1E (BIOS Write)", Debug)
                Store (0x1E, HWCT)
                Store (0x02, HWBC)
                Store (Arg0, HWB0)
                Store (WMBF, HWBF)
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCC, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x1F (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }, Local0)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        Store (Zero, Local1)
                        Store (^^PCI0.LPCB.EC0.MBST, Local2)
                        If (LEqual (And (Local2, One), One))
                        {
                            Or (Local1, 0x02, Local1)
                        }

                        If (LEqual (And (Local2, 0x02), 0x02))
                        {
                            Or (Local1, One, Local1)
                        }

                        If (LEqual (^^PCI0.LPCB.EC0.MBDC, Zero))
                        {
                            Store (Zero, Local1)
                        }

                        Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                    Else
                    {
                        Store (0xFF, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }

                    Store (0xFF, Index (DerefOf (Index (Local0, 0x02)), One))
                }
                Else
                {
                    Store (0x35, Index (DerefOf (Index (Local0, Zero)), Zero))
                }

                Return (Local0)
            }

            Method (SBCC, 4, NotSerialized)
            {
                Store ("HP WMI Command 0x1F (BIOS Write)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Buffer (0x04) {}
                    }, Local0)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    If (LAnd (LEqual (Arg0, Zero), LEqual (^^PCI0.LPCB.EC0.MBTS, One)))
                    {
                        Store (^^PCI0.LPCB.EC0.MBST, Local1)
                        And (Local1, 0x03, Local1)
                        If (And (And (Local1, 0x02), LEqual (Arg1, One)))
                        {
                            Store (0x36, Index (Local0, Zero))
                        }
                        Else
                        {
                            If (And (And (Local1, One), LEqual (Arg1, 0x02)))
                            {
                                Store (0x36, Index (Local0, Zero))
                            }
                            Else
                            {
                                If (And (LEqual (^^PCI0.LPCB.EC0.ACCC, Zero), LEqual (Arg1, One)))
                                {
                                    Store (0x35, Index (Local0, Zero))
                                }
                                Else
                                {
                                    Store (^^PCI0.LPCB.EC0.MBDC, Local1)
                                    If (LEqual (Arg1, Zero))
                                    {
                                        And (Local1, 0xE0, Local1)
                                        Store (One, WEVD)
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            And (Local1, 0xFFFFFFF9, Local1)
                                            Or (Local1, 0x09, Local1)
                                            Store (One, WEVD)
                                        }
                                        Else
                                        {
                                            If (LEqual (Arg1, 0x02))
                                            {
                                                And (Local1, 0xFFFFFFFA, Local1)
                                                Or (Local1, 0x0A, Local1)
                                                Store (One, WEVD)
                                            }
                                            Else
                                            {
                                                Store (0x06, Index (Local0, Zero))
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Else
                    {
                        If (LEqual (Arg0, One))
                        {
                            Store (0x34, Index (Local0, Zero))
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x63))
                            {
                                If (LEqual (^^PCI0.LPCB.EC0.ACCC, One))
                                {
                                    Store (^^PCI0.LPCB.EC0.MBDC, Local1)
                                    If (LEqual (Arg1, Zero))
                                    {
                                        And (Local1, 0xE0, Local1)
                                        Store (One, WEVD)
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            And (Local1, 0xFFFFFFFA, Local1)
                                            Or (Local1, 0x0A, Local1)
                                            Store (One, WEVD)
                                        }
                                        Else
                                        {
                                            If (LEqual (Arg1, 0x02))
                                            {
                                                And (Local1, 0xFFFFFFFC, Local1)
                                                Or (Local1, 0x0C, Local1)
                                                Store (One, WEVD)
                                            }
                                            Else
                                            {
                                                Store (0x06, Index (Local0, Zero))
                                            }
                                        }
                                    }
                                }
                                Else
                                {
                                    Store (0x35, Index (Local0, Zero))
                                }
                            }
                            Else
                            {
                                Store (0x06, Index (Local0, Zero))
                            }
                        }
                    }

                    If (LEqual (WEVD, One))
                    {
                        Store (Local1, ^^PCI0.LPCB.EC0.MBDC)
                        Sleep (0x64)
                        Store (^^PCI0.LPCB.EC0.MBDC, Local1)
                        If (LEqual (Arg1, Zero))
                        {
                            While (LNotEqual (And (Local1, Zero), Zero))
                            {
                                Sleep (0x64)
                                Store (^^PCI0.LPCB.EC0.MBDC, Local1)
                            }
                        }
                        Else
                        {
                            While (LNotEqual (And (Local1, 0x10), 0x10))
                            {
                                Sleep (0x64)
                                Store (^^PCI0.LPCB.EC0.MBDC, Local1)
                            }
                        }
                    }
                }
                Else
                {
                    Store (0x35, Index (Local0, Zero))
                }

                Store (Zero, WEVD)
                Return (Local0)
            }

            Method (GTDC, 1, NotSerialized)
            {
                Store (Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }, Local0)
                Store (0x28, HWCT)
                Store (One, HWBC)
                Store (Arg0, HWB0)
                Store (WMBF, HWBF)
                TSMI (0xC3, One)
                Store (HWBF, Index (Local0, 0x02))
                Return (Local0)
            }

            Method (STDC, 2, NotSerialized)
            {
                Store (0x28, HWCT)
                Store (0x02, HWBC)
                Store (Arg1, HWBF)
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GFCS, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x29 (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }
                    }, Local0)
                Store (0x29, HWCT)
                Store (One, HWBC)
                Store (FACM, Index (DerefOf (Index (Local0, 0x02)), Zero))
                Return (Local0)
            }

            Method (SFCS, 1, Serialized)
            {
                Store ("HP WMI Command 0x29 (BIOS Write)", Debug)
                Store (0x29, HWCT)
                Store (0x02, HWBC)
                Store (Arg0, HWB0)
                Store (Arg0, FACM)
                Store (WMBF, HWBF)
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPES, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x2A (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }
                    }, Local0)
                Store (0x2A, HWCT)
                Store (One, HWBC)
                TSMI (0xC3, One)
                Store (HWBF, WMBF)
                Store (HWB0, Index (DerefOf (Index (Local0, 0x02)), Zero))
                Store (HWB1, Index (DerefOf (Index (Local0, 0x02)), One))
                Store (HWB2, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                Store (HWB3, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                Return (Local0)
            }

            Method (SPES, 1, Serialized)
            {
                Store ("HP WMI Command 0x2A (BIOS Write)", Debug)
                Store (Arg0, HWB0)
                Store (0x2A, HWCT)
                Store (0x02, HWBC)
                Store (WMBF, HWBF)
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCO, 0, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store ("HP WMI Command 0x2B (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }, Local0)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        If (^^PCI0.LPCB.EC0.BTVD)
                        {
                            If (^^PCI0.LPCB.EC0.ACCC)
                            {
                                Store (^^PCI0.LPCB.EC0.MBST, Local2)
                                And (Local2, 0x03, Local2)
                                While (One)
                                {
                                    Store (Local2, _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        Store (^^PCI0.LPCB.EC0.BDVO, Local1)
                                        If (LEqual (Local1, 0xC5))
                                        {
                                            Store (0x04, Local1)
                                        }
                                        Else
                                        {
                                            Store (Zero, Local1)
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            Store (0x02, Local1)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Store (^^PCI0.LPCB.EC0.MCUR, Local2)
                                                Store (0xC3, Local3)
                                                If (And (LLessEqual (Local2, 0x0200), LEqual (^^PCI0.LPCB.EC0.BDVO, Local3)))
                                                {
                                                    Store (0x03, Local1)
                                                }
                                                Else
                                                {
                                                    Store (One, Local1)
                                                }
                                            }
                                            Else
                                            {
                                                Store (0x37, Index (DerefOf (Index (Local0, Zero)), Zero))
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                Store (0x02, Local1)
                            }
                        }
                        Else
                        {
                            Store (0x37, Index (DerefOf (Index (Local0, Zero)), Zero))
                        }
                    }
                    Else
                    {
                        Store (0xFF, Local1)
                    }

                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (0xFF, Index (DerefOf (Index (Local0, 0x02)), One))
                }
                Else
                {
                    Store (0x35, Index (DerefOf (Index (Local0, Zero)), Zero))
                }

                Return (Local0)
            }

            Method (SBCO, 4, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store ("HP WMI Command 0x2B (BIOS Write)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Buffer (0x04) {}
                    }, Local0)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    If (LEqual (Arg0, Zero))
                    {
                        If (^^PCI0.LPCB.EC0.MBTS)
                        {
                            If (^^PCI0.LPCB.EC0.BTVD)
                            {
                                Store (^^PCI0.LPCB.EC0.MBST, Local1)
                                While (One)
                                {
                                    Store (Arg1, _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        Store (0x40, Local1)
                                        Store (One, WEVD)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (^^PCI0.LPCB.EC0.ACCC, Zero))
                                            {
                                                Store (0x35, Index (Local0, Zero))
                                            }
                                            Else
                                            {
                                                If (^^PCI0.LPCB.EC0.MBFC)
                                                {
                                                    Store (0x35, Index (Local0, Zero))
                                                }
                                                Else
                                                {
                                                    Store (0x41, Local1)
                                                    Store (One, WEVD)
                                                }
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                If (And (Local1, One))
                                                {
                                                    Store (0x36, Index (Local0, Zero))
                                                }
                                                Else
                                                {
                                                    Store (0x42, Local1)
                                                    Store (One, WEVD)
                                                }
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x03))
                                                {
                                                    If (LEqual (^^PCI0.LPCB.EC0.ACCC, Zero))
                                                    {
                                                        Store (0x35, Index (Local0, Zero))
                                                    }

                                                    If (^^PCI0.LPCB.EC0.MBFC)
                                                    {
                                                        Store (0x35, Index (Local0, Zero))
                                                    }
                                                    Else
                                                    {
                                                        Store (0x43, Local1)
                                                        Store (One, WEVD)
                                                    }
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x04))
                                                    {
                                                        Store (0x44, Local1)
                                                        Store (One, WEVD)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x05))
                                                        {
                                                            Store (0x45, Local1)
                                                            Store (One, WEVD)
                                                        }
                                                        Else
                                                        {
                                                            Store (0x06, Index (Local0, Zero))
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    Break
                                }

                                If (LEqual (WEVD, One))
                                {
                                    Store (Local1, ^^PCI0.LPCB.EC0.BDVO)
                                    Sleep (0x64)
                                    Store (^^PCI0.LPCB.EC0.BDVO, Local1)
                                    While (LNotEqual (And (Local1, 0x80), 0x80))
                                    {
                                        Sleep (0x64)
                                        Store (^^PCI0.LPCB.EC0.BDVO, Local1)
                                    }

                                    And (Local1, 0x30, Local1)
                                    While (One)
                                    {
                                        Store (Local1, _T_1)
                                        If (LEqual (_T_1, Zero))
                                        {
                                            Store (Zero, Index (Local0, Zero))
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_1, 0x10))
                                            {
                                                Store (0x35, Index (Local0, Zero))
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_1, 0x20))
                                                {
                                                    Store (0x35, Index (Local0, Zero))
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_1, 0x30))
                                                    {
                                                        Store (0x37, Index (Local0, Zero))
                                                    }
                                                    Else
                                                    {
                                                        Store (0x37, Index (Local0, Zero))
                                                    }
                                                }
                                            }
                                        }

                                        Break
                                    }
                                }
                            }
                            Else
                            {
                                Store (0x37, Index (Local0, Zero))
                            }
                        }
                        Else
                        {
                            Store (0x34, Index (Local0, Zero))
                        }
                    }
                    Else
                    {
                        If (LEqual (Arg0, One))
                        {
                            Store (0x34, Index (Local0, Zero))
                        }
                        Else
                        {
                            Store (0x06, Index (Local0, Zero))
                        }
                    }
                }
                Else
                {
                    Store (0x35, Index (Local0, Zero))
                }

                Store (Zero, WEVD)
                Return (Local0)
            }

            Method (GTCS, 0, NotSerialized)
            {
                Store ("HP WMI Command 0x2C (BIOS Read)", Debug)
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }
                    }, Local0)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    Store (0x04, Local2)
                    Store (^^PCI0.LPCB.EC0.GSMS, Local1)
                    ShiftLeft (Local1, One, Local1)
                    Or (Local2, Local1, Local2)
                    Or (^^PCI0.LPCB.EC0.GSSU, Local2, Local2)
                    Store (Local2, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (^^PCI0.LPCB.EC0.MMST, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), One))
                    Store (^^PCI0.LPCB.EC0.DMST, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                }

                Return (Local0)
            }

            Method (STCS, 4, NotSerialized)
            {
                Store ("HP WMI Command 0x2C (BIOS Write)", Debug)
                If (LEqual (^^PCI0.LPCB.EC0.ECOK, One))
                {
                    Store (Arg1, ^^PCI0.LPCB.EC0.MMST)
                    Store (Arg2, ^^PCI0.LPCB.EC0.DMST)
                    If (LEqual (^^PCI0.LPCB.EC0.GSMS, One))
                    {
                        ^^PCI0.LPCB.EC0._Q92 ()
                    }
                    Else
                    {
                        ^^PCI0.LPCB.EC0._Q96 ()
                    }

                    Or (ShiftLeft (Arg2, 0x04), Arg1, Local0)
                    CMSW (0x50, Local0)
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPST, 0, NotSerialized)
            {
                Store (Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }, Local0)
                CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x0400, BUFS)
                Store (BUFS, HWBF)
                Store (0x36, HWCT)
                Store (One, HWBC)
                TSMI (0xC3, One)
                Store (HWBF, BUFS)
                Return (Local0)
            }

            Method (GBCT, 0, NotSerialized)
            {
                Store (Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }, Local0)
                CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x0400, BUFS)
                Store (BUFS, HWBF)
                Store (0x37, HWCT)
                Store (One, HWBC)
                TSMI (0xC3, One)
                Store (HWBF, BUFS)
                Return (Local0)
            }

            Method (GBST, 0, NotSerialized)
            {
                Store (Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }
                    }, Local0)
                Store (0x38, HWCT)
                Store (One, HWBC)
                TSMI (0xC3, One)
                CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x20, BUFS)
                Store (Buffer (0x80) {}, Local1)
                Store (HWBF, Local1)
                CreateDWordField (Local1, Zero, HWD1)
                Store (HWD1, BUFS)
                Return (Local0)
            }

            Method (SPST, 1, NotSerialized)
            {
                Store (Arg0, HWBF)
                Store (0x36, HWCT)
                Store (0x02, HWBC)
                TSMI (0xC3, One)
                Store (Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, Local0)
                Store (HWRC, Index (Local0, Zero))
                Return (Local0)
            }

            Method (SBCT, 1, NotSerialized)
            {
                Store (Arg0, HWBF)
                Store (0x37, HWCT)
                Store (0x02, HWBC)
                TSMI (0xC3, One)
                Store (Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, Local0)
                Store (HWRC, Index (Local0, Zero))
                Return (Local0)
            }

            Method (SBST, 4, NotSerialized)
            {
                Store (Buffer (0x04) {}, Local0)
                Store (Arg0, Index (Local0, Zero))
                Store (Arg1, Index (Local0, One))
                Store (Arg2, Index (Local0, 0x02))
                Store (Arg3, Index (Local0, 0x03))
                Store (Local0, HWBF)
                Store (0x38, HWCT)
                Store (0x02, HWBC)
                TSMI (0xC3, One)
                Store (Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, Local0)
                Store (HWRC, Index (Local0, Zero))
                Return (Local0)
            }

            Method (GWEV, 2, NotSerialized)
            {
                If (LEqual (WEI0, Zero))
                {
                    Store (Arg0, WEI0)
                    Store (Arg1, WED0)
                }
                Else
                {
                    Store (Arg0, WEI1)
                    Store (Arg1, WED1)
                }

                Notify (WMID, 0x80)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                Store (Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    }, Local0)
                CreateDWordField (Local0, Zero, EVID)
                CreateDWordField (Local0, 0x04, EVDA)
                Store (WEI0, EVID)
                Store (WED0, EVDA)
                If (LNotEqual (WEI1, Zero))
                {
                    Store (WEI1, WEI0)
                    Store (WED1, WED0)
                    Store (WEI0, EVID)
                    Store (WED0, EVDA)
                    Store (Zero, WEI1)
                    Store (Zero, WED1)
                    If (LEqual (WEVI, Zero))
                    {
                        Store (One, WEVI)
                        Notify (WMID, 0x80)
                    }
                }
                Else
                {
                    Store (Zero, WEI0)
                    Store (Zero, WED0)
                }

                Return (Local0)
            }

            Method (WMBA, 3, NotSerialized)
            {
                Name (DBUF, Buffer (0x80) {})
                If (LEqual (Arg1, One))
                {
                    Store (Arg2, Local0)
                    Store (SizeOf (Local0), Local1)
                    Store (DerefOf (Index (Local0, Zero)), Local4)
                    Store (0x02, Local2)
                    Store (Zero, Local3)
                    Store (Zero, Local5)
                    While (LNotEqual (Local3, Local4))
                    {
                        Store (DerefOf (Index (Local0, Local2)), Index (DBUF, Local5))
                        Add (0x02, Local2, Local2)
                        Add (0x02, Local3, Local3)
                        Increment (Local5)
                    }

                    Store (Zero, Index (DBUF, Local5))
                    Store (Zero, Local3)
                    Store (DerefOf (Index (Local0, Local2)), Local4)
                    Add (0x02, Local2, Local2)
                    Increment (Local5)
                    While (LNotEqual (Local3, Local4))
                    {
                        Store (DerefOf (Index (Local0, Local2)), Index (DBUF, Local5))
                        Add (0x02, Local2, Local2)
                        Add (0x02, Local3, Local3)
                        Increment (Local5)
                    }

                    Store (Zero, Index (DBUF, Local5))
                    Store (DBUF, HWBF)
                    Store (0x02, HWRC)
                    Store (Zero, HWCT)
                    Store (0xFD, HWBC)
                    Store (0xD7, SSMP)
                    Return (HWRC)
                }
                Else
                {
                    If (LEqual (Arg1, 0x02))
                    {
                        Store (Arg2, DBUF)
                        Store (DBUF, HWBF)
                        Store (0x02, HWRC)
                        Store (Zero, HWCT)
                        Store (0xFC, HWBC)
                        Store (0xD7, SSMP)
                        Return (HWRC)
                    }
                }

                Return (One)
            }

            Method (WQBK, 1, NotSerialized)
            {
                Store (Arg0, Local0)
                Store (Local0, HWBF)
                Store (0x02, HWRC)
                Store (Zero, HWCT)
                Store (0xFE, HWBC)
                Store (0xD7, SSMP)
                If (LEqual (Zero, HWRC))
                {
                    Store (Buffer (0x80) {}, Local1)
                    Store (HWBF, Local1)
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, Multiply (0x08, NSTL), NSTR)
                    Add (0x02, NSTL, Local0)
                    CreateWordField (Local1, Local0, VSTL)
                    Add (Local0, 0x02, Local0)
                    CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, VSTL), VSTR)
                    Add (0x02, NSTL, Local0)
                    Add (Local0, 0x02, Local0)
                    Add (Local0, VSTL, Local0)
                    CreateWordField (Local1, Local0, CSTL)
                    Add (0x02, Local0, Local0)
                    CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, CSTL), CSTR)
                    Add (0x02, NSTL, Local0)
                    Add (Local0, 0x02, Local0)
                    Add (Local0, VSTL, Local0)
                    Add (Local0, 0x02, Local0)
                    Add (Local0, CSTL, Local0)
                    CreateWordField (Local1, Local0, NOPV)
                    Add (0x02, Local0, Local0)
                    CreateWordField (Local1, Local0, PBL1)
                    Add (0x02, Local0, Local0)
                    CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, PBL1), PBV1)
                    Add (PBL1, Local0, Local0)
                    CreateWordField (Local1, Local0, PBL2)
                    Add (0x02, Local0, Local0)
                    CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, PBL2), PBV2)
                    Name (BERP, Package (0x18)
                    {
                        "Name", 
                        "Value", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        "Enable", 
                        0x0C, 
                        "Enable", 
                        "Disable", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    Name (BF2S, Buffer (0x46) {})
                    Name (STRB, "                                                                      ")
                    Store (NSTR, BF2S)
                    Store (BF2S, STRB)
                    Store (STRB, Index (BERP, Zero))
                    Store (VSTR, BF2S)
                    Store (BF2S, STRB)
                    Store (STRB, Index (BERP, One))
                    Store (CSTR, BF2S)
                    Store (BF2S, STRB)
                    Store (STRB, Index (BERP, 0x0A))
                    Store (PBV1, BF2S)
                    Store (BF2S, STRB)
                    Store (STRB, Index (BERP, 0x0C))
                    Store (PBV2, BF2S)
                    Store (BF2S, STRB)
                    Store (STRB, Index (BERP, 0x0D))
                    Store (Arg0, Index (BERP, 0x06))
                    Return (BERP)
                }

                Return (HWRC)
            }

            Method (WQBD, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WQBE, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WQBF, 1, NotSerialized)
            {
                Return (Package (0x10)
                {
                    "Setup Password", 
                    " ", 
                    "Path", 
                    One, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    " ", 
                    Zero, 
                    One, 
                    0x14, 
                    "", 
                    "", 
                    Zero, 
                    Zero
                })
            }

            Method (WQBG, 0, NotSerialized)
            {
            }

            Method (WQBH, 0, NotSerialized)
            {
            }

            Method (WQBI, 0, NotSerialized)
            {
            }

            Name (WQAE, Buffer (0x2135)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x25, 0x21, 0x00, 0x00, 0xB0, 0xCB, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x28, 0x27, 0xA1, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x4D, 0x10, 0x92, 0x46, 0x62, 0x02, 0x89,
                /* 0028 */  0x80, 0x90, 0x18, 0x18, 0x14, 0x81, 0x85, 0x00,
                /* 0030 */  0x49, 0x02, 0x88, 0xC4, 0x41, 0xE1, 0x20, 0xD4,
                /* 0038 */  0x9F, 0x40, 0x7E, 0x05, 0x20, 0x74, 0x28, 0x40,
                /* 0040 */  0xA6, 0x00, 0x83, 0x02, 0x9C, 0x22, 0x88, 0xA0,
                /* 0048 */  0x57, 0x01, 0x36, 0x05, 0x98, 0x14, 0x60, 0x51,
                /* 0050 */  0x80, 0x76, 0x01, 0x96, 0x05, 0xE8, 0x16, 0x20,
                /* 0058 */  0x1D, 0x96, 0x88, 0x04, 0x47, 0x89, 0x01, 0x47,
                /* 0060 */  0xE9, 0xC4, 0x16, 0x6E, 0xD8, 0xE0, 0x85, 0xA2,
                /* 0068 */  0x68, 0x06, 0x51, 0x12, 0x94, 0x8B, 0x20, 0x5D,
                /* 0070 */  0x10, 0x52, 0x2E, 0xC0, 0x37, 0x82, 0x06, 0x10,
                /* 0078 */  0xA5, 0x77, 0x01, 0xB6, 0x05, 0x98, 0x86, 0x27,
                /* 0080 */  0xD2, 0x20, 0xE4, 0x60, 0x08, 0x54, 0xCE, 0x80,
                /* 0088 */  0x20, 0x69, 0x44, 0x21, 0x1E, 0xA7, 0x44, 0x08,
                /* 0090 */  0x0A, 0x84, 0x90, 0xD4, 0xF1, 0xA0, 0xA0, 0x71,
                /* 0098 */  0x88, 0xAD, 0xCE, 0x46, 0x93, 0xA9, 0x74, 0x7E,
                /* 00A0 */  0x48, 0x82, 0x70, 0xC6, 0x2A, 0x7E, 0x3A, 0x9A,
                /* 00A8 */  0xD0, 0xD9, 0x9C, 0x60, 0xE7, 0x18, 0x72, 0x3C,
                /* 00B0 */  0x48, 0xF4, 0x20, 0xB8, 0x00, 0x0F, 0x1C, 0x2C,
                /* 00B8 */  0x34, 0x84, 0x22, 0x6B, 0x80, 0xC1, 0x8C, 0xDD,
                /* 00C0 */  0x63, 0xB1, 0x0B, 0x4E, 0x0A, 0xEC, 0x61, 0xB3,
                /* 00C8 */  0x01, 0x19, 0xA2, 0x24, 0x38, 0xD4, 0x11, 0xC0,
                /* 00D0 */  0x12, 0x05, 0x98, 0x1F, 0x87, 0x0C, 0x0F, 0x95,
                /* 00D8 */  0x8C, 0x25, 0x24, 0x1B, 0xAB, 0x87, 0xC2, 0xA5,
                /* 00E0 */  0x40, 0x68, 0x6C, 0x27, 0xED, 0x19, 0x45, 0x2C,
                /* 00E8 */  0x79, 0x4A, 0x82, 0x49, 0xE0, 0x51, 0x44, 0x36,
                /* 00F0 */  0x1A, 0x27, 0x28, 0x1B, 0x1A, 0x25, 0x03, 0x42,
                /* 00F8 */  0x9E, 0x05, 0x58, 0x07, 0x26, 0x04, 0x76, 0x2F,
                /* 0100 */  0xC0, 0x9A, 0x00, 0x73, 0xB3, 0x90, 0xB1, 0xB9,
                /* 0108 */  0xE8, 0xFF, 0x0F, 0x71, 0xB0, 0x31, 0xDA, 0x9A,
                /* 0110 */  0xAE, 0x90, 0xC2, 0xC4, 0x88, 0x12, 0x2C, 0x5E,
                /* 0118 */  0xC5, 0xC3, 0x10, 0xCA, 0x93, 0x42, 0xA8, 0x48,
                /* 0120 */  0x95, 0xA1, 0x68, 0xB4, 0x51, 0x2A, 0x14, 0xE0,
                /* 0128 */  0x4C, 0x80, 0x30, 0x5C, 0x1D, 0x03, 0x82, 0x46,
                /* 0130 */  0x88, 0x15, 0x29, 0x56, 0xFB, 0x83, 0x20, 0xF1,
                /* 0138 */  0x2D, 0x40, 0x54, 0x01, 0xA2, 0x48, 0xA3, 0x41,
                /* 0140 */  0x9D, 0x03, 0x3C, 0x5C, 0x0F, 0xF5, 0xF0, 0x3D,
                /* 0148 */  0xF6, 0x93, 0x0C, 0x72, 0x90, 0x67, 0xF1, 0xA8,
                /* 0150 */  0x70, 0x9C, 0x06, 0x49, 0xE0, 0x0B, 0x80, 0x4F,
                /* 0158 */  0x08, 0x1E, 0x38, 0xDE, 0x35, 0xA0, 0x66, 0x7C,
                /* 0160 */  0xBC, 0x4C, 0x10, 0x1C, 0x6A, 0x88, 0x1E, 0x68,
                /* 0168 */  0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0x49, 0x3D,
                /* 0170 */  0x52, 0x60, 0x07, 0x77, 0x32, 0xEF, 0x01, 0xAF,
                /* 0178 */  0x0A, 0xCD, 0x5E, 0x12, 0x08, 0xC1, 0xF1, 0xF8,
                /* 0180 */  0x7E, 0xC0, 0x26, 0x9C, 0xC0, 0xF2, 0x07, 0x81,
                /* 0188 */  0x1A, 0x99, 0xA1, 0x3D, 0xCA, 0xD3, 0x8A, 0x19,
                /* 0190 */  0xF2, 0x31, 0xC1, 0x04, 0x16, 0x0B, 0x21, 0x05,
                /* 0198 */  0x10, 0x1A, 0x0F, 0xF8, 0x6F, 0x00, 0x8F, 0x17,
                /* 01A0 */  0xBE, 0x12, 0xC4, 0xF6, 0x80, 0x12, 0x0C, 0x0B,
                /* 01A8 */  0x21, 0x23, 0xAB, 0xF0, 0x78, 0xE8, 0x28, 0x7C,
                /* 01B0 */  0x95, 0x38, 0x9C, 0xD3, 0x8A, 0x67, 0x82, 0xE1,
                /* 01B8 */  0x20, 0xF4, 0x05, 0x90, 0x00, 0x51, 0xE7, 0x0C,
                /* 01C0 */  0xD4, 0x61, 0xC1, 0xE7, 0x04, 0x76, 0x33, 0x38,
                /* 01C8 */  0x83, 0x47, 0x00, 0x8F, 0xE4, 0x84, 0xFC, 0x2B,
                /* 01D0 */  0xF1, 0xC0, 0xE0, 0x03, 0xE2, 0xEF, 0x1F, 0xA7,
                /* 01D8 */  0xEC, 0x11, 0x9C, 0xA9, 0x01, 0x7D, 0x1C, 0xF0,
                /* 01E0 */  0xFF, 0x7F, 0x28, 0x7C, 0x88, 0x1E, 0xDF, 0x29,
                /* 01E8 */  0x1F, 0xAF, 0x4F, 0x17, 0x96, 0x35, 0x4E, 0xE8,
                /* 01F0 */  0x77, 0x08, 0x9F, 0x38, 0x7C, 0x64, 0x71, 0x44,
                /* 01F8 */  0x08, 0x39, 0x39, 0x05, 0xA0, 0x81, 0x4F, 0xF7,
                /* 0200 */  0xEC, 0x22, 0x9C, 0xAE, 0x27, 0xE5, 0x40, 0xC3,
                /* 0208 */  0xA0, 0xE3, 0x04, 0xC7, 0x79, 0x00, 0x1C, 0xE3,
                /* 0210 */  0x84, 0x7F, 0x2E, 0x80, 0x3F, 0x40, 0x7E, 0xCA,
                /* 0218 */  0x78, 0xC5, 0x48, 0xE0, 0x98, 0x23, 0x44, 0x9F,
                /* 0220 */  0x6B, 0x3C, 0x42, 0x2C, 0xFC, 0x53, 0x45, 0xE1,
                /* 0228 */  0x03, 0x21, 0x63, 0x04, 0x17, 0xA0, 0xC7, 0x08,
                /* 0230 */  0x7C, 0x03, 0x8E, 0x11, 0x7D, 0x94, 0xE0, 0xEA,
                /* 0238 */  0x0F, 0x1A, 0x74, 0x80, 0xB8, 0xFF, 0xFF, 0x00,
                /* 0240 */  0xE1, 0x83, 0x7A, 0x80, 0xC0, 0x37, 0xFA, 0xD1,
                /* 0248 */  0x03, 0x3D, 0x2E, 0x8B, 0x3E, 0x0F, 0xC8, 0xF8,
                /* 0250 */  0x89, 0x46, 0xF3, 0xE2, 0xA7, 0x03, 0x7E, 0xF8,
                /* 0258 */  0x00, 0x0F, 0xA8, 0x87, 0x84, 0x03, 0xC5, 0x4C,
                /* 0260 */  0x9B, 0x83, 0x3E, 0xBB, 0x1C, 0x3A, 0x76, 0xB8,
                /* 0268 */  0xE0, 0x3F, 0x81, 0x80, 0x4B, 0xDE, 0x21, 0x0C,
                /* 0270 */  0x14, 0x23, 0xC6, 0x9F, 0x83, 0x7C, 0x0A, 0x03,
                /* 0278 */  0xFF, 0xFF, 0xFF, 0x14, 0x06, 0xFE, 0xE1, 0xF0,
                /* 0280 */  0x20, 0x4F, 0x07, 0x9F, 0xB6, 0xA8, 0x74, 0x18,
                /* 0288 */  0xD4, 0x81, 0x0B, 0xB0, 0x32, 0x89, 0x08, 0xCF,
                /* 0290 */  0x12, 0xB5, 0x41, 0xE8, 0xD4, 0xF0, 0x36, 0xF1,
                /* 0298 */  0xB6, 0xE5, 0x5B, 0x40, 0x9C, 0xD3, 0xEC, 0xED,
                /* 02A0 */  0xC0, 0x45, 0x30, 0x22, 0xD4, 0x0C, 0x45, 0x4E,
                /* 02A8 */  0x5A, 0x11, 0x63, 0x44, 0x79, 0xDC, 0x32, 0xCA,
                /* 02B0 */  0xDB, 0xD6, 0x0B, 0x40, 0xBC, 0x13, 0x7B, 0xDE,
                /* 02B8 */  0x32, 0x46, 0xF0, 0xC8, 0x0F, 0x5C, 0x2C, 0xC6,
                /* 02C0 */  0xEA, 0xF5, 0x5F, 0xF3, 0x81, 0x0B, 0x70, 0xF6,
                /* 02C8 */  0xFF, 0x3F, 0x70, 0x01, 0x1C, 0x0A, 0x7A, 0x18,
                /* 02D0 */  0x42, 0x0F, 0xC3, 0x53, 0x39, 0x97, 0x87, 0xC8,
                /* 02D8 */  0x53, 0x89, 0x18, 0x35, 0x4C, 0xD4, 0x67, 0x28,
                /* 02E0 */  0xDF, 0x2D, 0x7C, 0x20, 0x02, 0xDF, 0x99, 0x0B,
                /* 02E8 */  0xF8, 0xFD, 0xFF, 0x0F, 0x44, 0x70, 0x8E, 0x29,
                /* 02F0 */  0xB8, 0x33, 0x0D, 0x78, 0x7C, 0xCE, 0x40, 0x20,
                /* 02F8 */  0xA7, 0xE2, 0x43, 0x0D, 0x60, 0x41, 0xF4, 0x13,
                /* 0300 */  0xC2, 0x27, 0x1A, 0x2A, 0x13, 0x06, 0x75, 0xA8,
                /* 0308 */  0x01, 0xAC, 0x5C, 0x61, 0x9E, 0x46, 0xCF, 0xF9,
                /* 0310 */  0x59, 0xC6, 0xA7, 0x1A, 0x1F, 0x4A, 0x8D, 0x63,
                /* 0318 */  0x88, 0x97, 0x99, 0x87, 0x1A, 0x1F, 0x0B, 0x5E,
                /* 0320 */  0x49, 0x7D, 0xA8, 0x31, 0x54, 0x9C, 0x87, 0x1A,
                /* 0328 */  0x0F, 0x37, 0x50, 0xD4, 0x37, 0x9B, 0x67, 0x1B,
                /* 0330 */  0xA3, 0xC7, 0xF7, 0x0D, 0xD5, 0x10, 0x0F, 0x35,
                /* 0338 */  0x4C, 0xF2, 0x4A, 0x35, 0x16, 0x1F, 0x6A, 0xC0,
                /* 0340 */  0xF1, 0xFF, 0x3F, 0xD4, 0x00, 0xFC, 0xFF, 0xFF,
                /* 0348 */  0x1F, 0x6A, 0x00, 0x47, 0x47, 0x03, 0x38, 0x47,
                /* 0350 */  0x46, 0xDC, 0xD1, 0x00, 0x5C, 0x87, 0x52, 0xE0,
                /* 0358 */  0x70, 0x34, 0x00, 0x1E, 0x47, 0x21, 0x30, 0x5F,
                /* 0360 */  0x68, 0x7C, 0x14, 0x02, 0x16, 0xFF, 0xFF, 0xA3,
                /* 0368 */  0x10, 0xF8, 0x65, 0x9F, 0x83, 0x50, 0x42, 0x8F,
                /* 0370 */  0x42, 0x80, 0xA0, 0xDB, 0xCF, 0x53, 0xC4, 0xB3,
                /* 0378 */  0x8F, 0x2F, 0x3F, 0x0F, 0x04, 0x11, 0x5E, 0xF3,
                /* 0380 */  0x7D, 0x0A, 0xF2, 0x21, 0xDF, 0x47, 0x21, 0x06,
                /* 0388 */  0x63, 0x28, 0x5F, 0x83, 0x7C, 0x14, 0x62, 0x50,
                /* 0390 */  0xAF, 0x41, 0xBE, 0xEF, 0x1B, 0xE4, 0xF1, 0x22,
                /* 0398 */  0x48, 0xEC, 0x67, 0x02, 0x1F, 0x85, 0x98, 0xE8,
                /* 03A0 */  0xA3, 0x10, 0xA0, 0xF0, 0xFF, 0x7F, 0x14, 0x02,
                /* 03A8 */  0xF8, 0xFF, 0xFF, 0x3F, 0x0A, 0x01, 0xCE, 0x02,
                /* 03B0 */  0x1C, 0x0D, 0x40, 0x37, 0xAD, 0x47, 0x21, 0xF0,
                /* 03B8 */  0xDE, 0x59, 0x4E, 0xFB, 0x04, 0x7C, 0x16, 0x02,
                /* 03C0 */  0xCC, 0xFE, 0xFF, 0xCF, 0x42, 0xC0, 0xEC, 0x28,
                /* 03C8 */  0x74, 0x14, 0x67, 0xF9, 0x2A, 0xF4, 0x04, 0xF0,
                /* 03D0 */  0x02, 0x10, 0x23, 0xCC, 0x3B, 0xD0, 0x4B, 0x26,
                /* 03D8 */  0xBB, 0x8B, 0x1B, 0xE7, 0xC9, 0xE5, 0x2C, 0x9E,
                /* 03E0 */  0xC4, 0x7D, 0x09, 0xF2, 0x81, 0xE2, 0x59, 0xC8,
                /* 03E8 */  0x50, 0xA7, 0x1B, 0xF4, 0x8D, 0xDC, 0x03, 0x8B,
                /* 03F0 */  0x19, 0x3F, 0xC4, 0xF3, 0x90, 0x21, 0x9E, 0x85,
                /* 03F8 */  0x00, 0x76, 0xFD, 0xFF, 0xCF, 0x42, 0x00, 0xFF,
                /* 0400 */  0xFF, 0xFF, 0x47, 0x03, 0xF8, 0x2F, 0x00, 0x9F,
                /* 0408 */  0x85, 0x80, 0xE7, 0x09, 0xE0, 0x41, 0xDB, 0x67,
                /* 0410 */  0x21, 0x80, 0x33, 0x87, 0xCB, 0xF3, 0x7F, 0x05,
                /* 0418 */  0x3A, 0x96, 0xF7, 0x08, 0xCF, 0xFA, 0x24, 0x5F,
                /* 0420 */  0x2F, 0x3D, 0xD3, 0x87, 0x82, 0x67, 0x21, 0x86,
                /* 0428 */  0x75, 0x18, 0x3E, 0x0B, 0x31, 0x88, 0x17, 0x4D,
                /* 0430 */  0x43, 0xBC, 0x70, 0xFA, 0x30, 0xE0, 0xFF, 0x3F,
                /* 0438 */  0x5E, 0xE0, 0x57, 0x4E, 0x03, 0x05, 0x09, 0xF4,
                /* 0440 */  0x2C, 0x04, 0x30, 0xFE, 0xFF, 0x7F, 0x16, 0x02,
                /* 0448 */  0xC8, 0xB8, 0x46, 0x9D, 0x85, 0x80, 0xE5, 0x6D,
                /* 0450 */  0xE5, 0x19, 0xDB, 0xA7, 0x95, 0x04, 0xFF, 0xFF,
                /* 0458 */  0x67, 0x21, 0xC0, 0x41, 0x2E, 0x23, 0x07, 0x21,
                /* 0460 */  0x4C, 0xC4, 0x87, 0x83, 0x8F, 0x99, 0x80, 0x9E,
                /* 0468 */  0x29, 0xBE, 0xB8, 0x1B, 0xE3, 0x09, 0xE0, 0x45,
                /* 0470 */  0xE2, 0x31, 0x93, 0x1D, 0x35, 0x0D, 0xF3, 0x2C,
                /* 0478 */  0x64, 0xBC, 0xB3, 0x78, 0x0D, 0x78, 0x82, 0xF7,
                /* 0480 */  0xE4, 0x9F, 0x85, 0x18, 0xD8, 0x61, 0x05, 0x7B,
                /* 0488 */  0x14, 0x32, 0xA8, 0xC1, 0x63, 0x87, 0x08, 0x13,
                /* 0490 */  0xE8, 0x59, 0x88, 0xC5, 0x7D, 0xAE, 0xE8, 0x3C,
                /* 0498 */  0xE1, 0xB3, 0x10, 0xF0, 0xFE, 0xFF, 0x9F, 0x25,
                /* 04A0 */  0xE0, 0x5E, 0x0D, 0x9E, 0x85, 0x00, 0x13, 0x87,
                /* 04A8 */  0x0D, 0x9F, 0x35, 0xC0, 0x33, 0x7C, 0x8F, 0xEA,
                /* 04B0 */  0x1C, 0x1E, 0x8F, 0x81, 0x7F, 0x56, 0x1D, 0xE7,
                /* 04B8 */  0x04, 0x96, 0x7B, 0xD1, 0xB2, 0x71, 0xA0, 0xA1,
                /* 04C0 */  0x23, 0xB2, 0x3A, 0x20, 0x8D, 0x0D, 0x73, 0x29,
                /* 04C8 */  0x89, 0x7C, 0x72, 0x6C, 0xD4, 0x56, 0x04, 0xA7,
                /* 04D0 */  0x33, 0x93, 0x4F, 0x00, 0xD6, 0x42, 0x21, 0x05,
                /* 04D8 */  0x34, 0x1A, 0x8B, 0xE1, 0x9D, 0xF9, 0xE8, 0x44,
                /* 04E0 */  0x41, 0x0C, 0xE8, 0xE3, 0x90, 0x6D, 0x1C, 0x0A,
                /* 04E8 */  0x50, 0x7B, 0xD1, 0x14, 0xC8, 0x39, 0x07, 0xA3,
                /* 04F0 */  0x7F, 0x76, 0x74, 0x36, 0xBE, 0x13, 0x70, 0x0D,
                /* 04F8 */  0x10, 0x3A, 0x25, 0x18, 0xDA, 0x6A, 0x04, 0xFC,
                /* 0500 */  0xFF, 0x67, 0x89, 0x01, 0x33, 0xFE, 0x53, 0x8C,
                /* 0508 */  0x09, 0x7C, 0x8E, 0xC1, 0x1F, 0x0C, 0xF0, 0x03,
                /* 0510 */  0x7F, 0x31, 0xA8, 0xFA, 0x5E, 0xA0, 0xFB, 0x82,
                /* 0518 */  0xD5, 0xDD, 0x64, 0x20, 0xCC, 0xC8, 0x04, 0xF5,
                /* 0520 */  0x9D, 0x0E, 0x40, 0x01, 0xE4, 0x0B, 0x81, 0xCF,
                /* 0528 */  0x51, 0x0F, 0x05, 0x6C, 0x22, 0x21, 0xC2, 0x44,
                /* 0530 */  0x33, 0x3A, 0x62, 0xC2, 0xA8, 0xE8, 0x13, 0xA6,
                /* 0538 */  0x20, 0x9E, 0xB0, 0x63, 0x4D, 0x18, 0x3D, 0x13,
                /* 0540 */  0x5F, 0x74, 0xD8, 0x88, 0x31, 0x21, 0xAE, 0x1E,
                /* 0548 */  0xD0, 0x26, 0x18, 0xD4, 0x97, 0x22, 0x58, 0x43,
                /* 0550 */  0xE6, 0x63, 0xF1, 0x05, 0x02, 0x37, 0x65, 0x30,
                /* 0558 */  0xCE, 0x89, 0x5D, 0x13, 0x7C, 0xD9, 0xC1, 0xCD,
                /* 0560 */  0x19, 0x8C, 0xF0, 0x98, 0xBB, 0x18, 0xBF, 0x3A,
                /* 0568 */  0x79, 0x74, 0xFC, 0xA0, 0xE0, 0x1B, 0x0E, 0xC3,
                /* 0570 */  0x7E, 0x32, 0xF3, 0x8C, 0xDE, 0xCB, 0x7C, 0x8D,
                /* 0578 */  0xC3, 0xC0, 0x7A, 0xBC, 0x1C, 0xD6, 0x68, 0x61,
                /* 0580 */  0x0F, 0xED, 0x3D, 0xC4, 0xFF, 0xFF, 0x43, 0x8C,
                /* 0588 */  0xCF, 0x13, 0xC6, 0x08, 0xEB, 0xDB, 0x0B, 0x38,
                /* 0590 */  0xEE, 0x59, 0xF0, 0xEF, 0x1A, 0xE0, 0xB9, 0x84,
                /* 0598 */  0xF8, 0xAE, 0x01, 0x30, 0xF0, 0xFF, 0x7F, 0xD7,
                /* 05A0 */  0x00, 0x4E, 0xD7, 0x04, 0xDF, 0x35, 0x80, 0xF7,
                /* 05A8 */  0xD0, 0x7D, 0xD7, 0x00, 0xAE, 0xD9, 0xEF, 0x1A,
                /* 05B0 */  0xA8, 0x63, 0x80, 0x15, 0xDE, 0x35, 0xA0, 0x5D,
                /* 05B8 */  0xD9, 0xDE, 0xD7, 0x9E, 0xB0, 0xAC, 0xE9, 0xB2,
                /* 05C0 */  0x81, 0x52, 0x73, 0xD9, 0x00, 0x14, 0xFC, 0xFF,
                /* 05C8 */  0x2F, 0x1B, 0x80, 0x01, 0x29, 0x13, 0x46, 0x85,
                /* 05D0 */  0x9F, 0x30, 0x05, 0xF1, 0x84, 0x1D, 0xEC, 0xB2,
                /* 05D8 */  0x01, 0x8A, 0x18, 0x97, 0x0D, 0xD0, 0x8F, 0xED,
                /* 05E0 */  0x65, 0x03, 0x18, 0xDC, 0x13, 0xF8, 0x6D, 0x03,
                /* 05E8 */  0x78, 0x43, 0xFA, 0xB6, 0x01, 0xD6, 0xFF, 0xFF,
                /* 05F0 */  0x6D, 0x03, 0xAC, 0xF9, 0x6F, 0x1B, 0x28, 0x0E,
                /* 05F8 */  0xAB, 0xBC, 0x6D, 0x40, 0x3C, 0xC9, 0x33, 0x02,
                /* 0600 */  0xAB, 0xBA, 0x6E, 0xA0, 0xF4, 0x5C, 0x37, 0x00,
                /* 0608 */  0x12, 0x88, 0x99, 0x30, 0x2A, 0xFE, 0x84, 0x29,
                /* 0610 */  0x88, 0x27, 0xEC, 0x68, 0xD7, 0x0D, 0x50, 0x04,
                /* 0618 */  0xB9, 0x6E, 0x80, 0x7E, 0x5E, 0x09, 0xFE, 0xFF,
                /* 0620 */  0xAF, 0x1B, 0xC0, 0xE0, 0xA2, 0x80, 0xB9, 0x6F,
                /* 0628 */  0x00, 0x6F, 0x58, 0x7E, 0xDF, 0x00, 0x7C, 0xDC,
                /* 0630 */  0xC4, 0x31, 0xF7, 0x0D, 0xC0, 0xCC, 0xFF, 0xFF,
                /* 0638 */  0xBE, 0x01, 0xB0, 0xE7, 0xA2, 0x80, 0xBB, 0x6F,
                /* 0640 */  0x00, 0xEF, 0x8B, 0xB4, 0xEF, 0x1B, 0x60, 0xFE,
                /* 0648 */  0xFF, 0xDF, 0x37, 0xC0, 0x28, 0x6D, 0xFD, 0x1E,
                /* 0650 */  0x1C, 0x3D, 0x21, 0x78, 0x7C, 0xB8, 0xFB, 0xA5,
                /* 0658 */  0xC7, 0xE7, 0xBB, 0x39, 0x38, 0x06, 0x79, 0x8C,
                /* 0660 */  0x87, 0x76, 0xC0, 0xAF, 0xEF, 0x9E, 0x98, 0xEF,
                /* 0668 */  0xE6, 0xC0, 0xFF, 0x4C, 0x70, 0x3C, 0x18, 0x68,
                /* 0670 */  0x1C, 0x62, 0xAB, 0x97, 0x06, 0x72, 0x34, 0x38,
                /* 0678 */  0x3F, 0xDC, 0x19, 0x81, 0x61, 0x15, 0x7F, 0xF2,
                /* 0680 */  0x47, 0x38, 0xC7, 0xD0, 0xD9, 0xE1, 0x20, 0xB1,
                /* 0688 */  0x83, 0xE0, 0xC1, 0x56, 0x6D, 0x02, 0x85, 0x86,
                /* 0690 */  0x50, 0x14, 0x18, 0x14, 0x8B, 0x0F, 0x18, 0xF8,
                /* 0698 */  0x61, 0xB3, 0xB3, 0x00, 0x93, 0x04, 0x87, 0x3A,
                /* 06A0 */  0x02, 0xF8, 0x3E, 0xD1, 0xFC, 0x38, 0x74, 0x37,
                /* 06A8 */  0x38, 0x54, 0x8F, 0xE5, 0xA1, 0x80, 0x9E, 0x01,
                /* 06B0 */  0x71, 0xC7, 0x0C, 0x32, 0x69, 0xCF, 0x28, 0xE2,
                /* 06B8 */  0x53, 0xC2, 0x29, 0x85, 0x49, 0xE0, 0xF3, 0x03,
                /* 06C0 */  0x43, 0xE3, 0x04, 0xAF, 0x0D, 0xA1, 0xF9, 0xFF,
                /* 06C8 */  0xFF, 0xA4, 0xC0, 0x3C, 0xDF, 0x31, 0x04, 0x6C,
                /* 06D0 */  0x02, 0xBB, 0xBF, 0x64, 0xC8, 0xDA, 0xC0, 0x75,
                /* 06D8 */  0x4B, 0x32, 0x44, 0x6F, 0x38, 0xB2, 0x85, 0xA2,
                /* 06E0 */  0xE9, 0x44, 0x79, 0xDF, 0x88, 0x62, 0x67, 0x08,
                /* 06E8 */  0xC2, 0x88, 0x12, 0x2C, 0xC8, 0xA3, 0x42, 0xAC,
                /* 06F0 */  0x28, 0x2F, 0x05, 0x46, 0x88, 0x18, 0xE2, 0x95,
                /* 06F8 */  0x23, 0xD0, 0x09, 0x87, 0x0F, 0xF2, 0xD8, 0x14,
                /* 0700 */  0xA7, 0xFD, 0x41, 0x90, 0x58, 0x4F, 0x02, 0x8D,
                /* 0708 */  0xC5, 0x91, 0x46, 0x83, 0x3A, 0x07, 0x78, 0xB8,
                /* 0710 */  0x3E, 0xC4, 0x78, 0xF8, 0x0F, 0x21, 0x06, 0x39,
                /* 0718 */  0xC8, 0x73, 0x7B, 0x54, 0x38, 0x4E, 0x5F, 0x25,
                /* 0720 */  0x4C, 0xF0, 0x02, 0xE0, 0x83, 0x0A, 0x1C, 0xD7,
                /* 0728 */  0x80, 0x9A, 0xF1, 0x33, 0x06, 0x58, 0x8E, 0xE3,
                /* 0730 */  0x3E, 0xA9, 0xC0, 0x1D, 0x8F, 0xEF, 0x07, 0x6C,
                /* 0738 */  0xC2, 0x09, 0x2C, 0x7F, 0x10, 0xA8, 0xE3, 0x0C,
                /* 0740 */  0x9F, 0xE7, 0x0B, 0x8B, 0x21, 0x1F, 0x13, 0x4C,
                /* 0748 */  0x60, 0xB1, 0x27, 0x1B, 0x3A, 0x1E, 0xF0, 0xDF,
                /* 0750 */  0x63, 0x1E, 0x2F, 0x7C, 0x32, 0xF1, 0x7C, 0x4D,
                /* 0758 */  0x30, 0x22, 0x84, 0x9C, 0x8C, 0x07, 0x7D, 0x87,
                /* 0760 */  0xC0, 0x5C, 0x6F, 0xD8, 0xB9, 0x85, 0x8B, 0x3A,
                /* 0768 */  0x68, 0xA0, 0x4E, 0x0B, 0x3E, 0x28, 0xB0, 0x9B,
                /* 0770 */  0x11, 0xE6, 0xB8, 0xCE, 0xCF, 0x2A, 0x60, 0xF8,
                /* 0778 */  0xFF, 0x9F, 0x55, 0x60, 0x8F, 0x10, 0xFE, 0xED,
                /* 0780 */  0xC1, 0xF3, 0xF2, 0x95, 0xE1, 0xD5, 0x21, 0x81,
                /* 0788 */  0x43, 0x8E, 0x10, 0x3D, 0x2E, 0x8F, 0x10, 0x73,
                /* 0790 */  0x3E, 0xC2, 0x0C, 0x11, 0x5C, 0x67, 0x01, 0x70,
                /* 0798 */  0x0C, 0x11, 0xF8, 0x1C, 0x70, 0xC0, 0x71, 0x69,
                /* 07A0 */  0xE2, 0x03, 0xF5, 0x01, 0x07, 0x70, 0x70, 0x4D,
                /* 07A8 */  0xC3, 0x1D, 0x70, 0xC0, 0x71, 0x16, 0x60, 0xFF,
                /* 07B0 */  0xFF, 0xC3, 0x0D, 0x2C, 0x49, 0x26, 0x0E, 0x23,
                /* 07B8 */  0x18, 0x11, 0x30, 0x28, 0x02, 0x02, 0xA4, 0xB3,
                /* 07C0 */  0x80, 0x0F, 0x29, 0x00, 0x1F, 0xAE, 0x0C, 0x0F,
                /* 07C8 */  0x29, 0xD8, 0x93, 0x86, 0x07, 0x8E, 0x1B, 0x85,
                /* 07D0 */  0x07, 0x8D, 0x0B, 0x30, 0x68, 0x7A, 0xE2, 0x80,
                /* 07D8 */  0x7F, 0x4C, 0xF0, 0x19, 0x05, 0x1C, 0xE3, 0x06,
                /* 07E0 */  0xDF, 0x2A, 0x0C, 0xFC, 0xFF, 0x3F, 0x30, 0xCC,
                /* 07E8 */  0xE1, 0xC2, 0x63, 0x39, 0x8A, 0xA0, 0x07, 0x1E,
                /* 07F0 */  0xD4, 0xF7, 0x8C, 0x33, 0xF7, 0x24, 0x8F, 0xD1,
                /* 07F8 */  0x51, 0x0F, 0x27, 0xF4, 0xE4, 0x85, 0x3B, 0x57,
                /* 0800 */  0xF9, 0x0A, 0x71, 0x14, 0x18, 0xB8, 0x77, 0x29,
                /* 0808 */  0x8F, 0xCF, 0x17, 0x2B, 0xC3, 0x63, 0x46, 0xFB,
                /* 0810 */  0x1E, 0x72, 0xD6, 0x11, 0x02, 0xE2, 0x2F, 0x75,
                /* 0818 */  0x6C, 0xC0, 0x60, 0x39, 0x18, 0x00, 0x87, 0x01,
                /* 0820 */  0xE3, 0x13, 0x0D, 0x58, 0x67, 0x1B, 0x3C, 0xF4,
                /* 0828 */  0x69, 0x31, 0xC4, 0xE3, 0x0B, 0xFB, 0x56, 0x61,
                /* 0830 */  0x82, 0xEA, 0x41, 0x75, 0x12, 0xF4, 0xD0, 0xC0,
                /* 0838 */  0x01, 0xE8, 0xA1, 0xC1, 0x3F, 0xB9, 0x90, 0xFB,
                /* 0840 */  0x2B, 0x1D, 0x82, 0xB5, 0xE2, 0x69, 0xDE, 0x47,
                /* 0848 */  0x1E, 0xF3, 0xDC, 0xA2, 0xBC, 0x0D, 0x3C, 0x07,
                /* 0850 */  0xF0, 0xD3, 0x82, 0x87, 0xE3, 0x63, 0x81, 0xC7,
                /* 0858 */  0xE9, 0x4B, 0x58, 0x82, 0xF7, 0x1A, 0x9F, 0x6C,
                /* 0860 */  0x1E, 0x5C, 0x58, 0xB2, 0x21, 0xA0, 0x06, 0xEB,
                /* 0868 */  0x21, 0x60, 0xA6, 0x9A, 0xC0, 0x49, 0x46, 0x80,
                /* 0870 */  0xCA, 0x00, 0xA1, 0x1B, 0xCB, 0xE9, 0x3E, 0x8B,
                /* 0878 */  0x84, 0x38, 0xCD, 0x47, 0x99, 0xC7, 0x02, 0x8F,
                /* 0880 */  0xF5, 0xC1, 0xC0, 0xFF, 0x7F, 0xCD, 0x23, 0xD4,
                /* 0888 */  0x7D, 0xCD, 0x33, 0x7B, 0x3A, 0xC0, 0xAC, 0x22,
                /* 0890 */  0xDC, 0x7B, 0xCE, 0x1B, 0x86, 0xD1, 0x9E, 0x2D,
                /* 0898 */  0x7C, 0xCD, 0x78, 0xD6, 0x34, 0x42, 0x38, 0x76,
                /* 08A0 */  0x83, 0xF3, 0x48, 0x8C, 0xF0, 0x82, 0xC0, 0x4E,
                /* 08A8 */  0x0C, 0x0F, 0x30, 0xC6, 0x39, 0x79, 0xC3, 0xFA,
                /* 08B0 */  0xC2, 0xCB, 0x40, 0x83, 0x19, 0xDB, 0x97, 0x01,
                /* 08B8 */  0x36, 0x2A, 0xDF, 0x88, 0xC0, 0x97, 0xFC, 0x62,
                /* 08C0 */  0x00, 0x65, 0x16, 0xBE, 0x9E, 0xF8, 0xA0, 0xC4,
                /* 08C8 */  0x2E, 0x06, 0x2C, 0xE5, 0xC5, 0x00, 0x54, 0x37,
                /* 08D0 */  0x0C, 0x5F, 0x0C, 0xE0, 0x5F, 0x89, 0x5E, 0x0C,
                /* 08D8 */  0xC0, 0x70, 0x71, 0xF2, 0x3D, 0xC0, 0x1E, 0xEE,
                /* 08E0 */  0xA3, 0x74, 0x9C, 0xBE, 0xFD, 0xBD, 0x19, 0xF8,
                /* 08E8 */  0x6C, 0xC0, 0x60, 0x3C, 0xC3, 0x30, 0xC6, 0x08,
                /* 08F0 */  0xE3, 0x51, 0x86, 0x31, 0xC1, 0xDC, 0xB7, 0x03,
                /* 08F8 */  0xE8, 0x39, 0x87, 0x81, 0x4A, 0x78, 0x3B, 0x80,
                /* 0900 */  0x72, 0x0E, 0xE8, 0xF2, 0x68, 0x42, 0x4F, 0x01,
                /* 0908 */  0x4F, 0x07, 0x3E, 0x29, 0x1A, 0xA2, 0xAF, 0xB1,
                /* 0910 */  0x0A, 0x26, 0x50, 0xC4, 0x07, 0x0D, 0x3E, 0xB5,
                /* 0918 */  0x28, 0x3E, 0x15, 0x78, 0x2D, 0xCF, 0x4E, 0xE1,
                /* 0920 */  0xE2, 0x9C, 0x89, 0xA7, 0x6A, 0x38, 0x03, 0xBD,
                /* 0928 */  0xE6, 0x86, 0x63, 0xFF, 0x7F, 0x38, 0xFC, 0xA9,
                /* 0930 */  0xE0, 0x35, 0x80, 0x1D, 0x24, 0x3D, 0x2D, 0x23,
                /* 0938 */  0xC2, 0x38, 0xA4, 0x3C, 0x32, 0xF8, 0xB6, 0x18,
                /* 0940 */  0xC7, 0x90, 0x0F, 0x91, 0xBE, 0x13, 0x18, 0xF2,
                /* 0948 */  0x21, 0xEF, 0x79, 0xC7, 0xC0, 0xAF, 0x08, 0x71,
                /* 0950 */  0x9E, 0xB2, 0x7C, 0x67, 0xF0, 0x65, 0x01, 0x7C,
                /* 0958 */  0x91, 0x2E, 0x0B, 0x68, 0x68, 0x9F, 0x64, 0x7C,
                /* 0960 */  0x41, 0x30, 0xEC, 0x89, 0xB3, 0x00, 0x77, 0x05,
                /* 0968 */  0x50, 0x81, 0xFA, 0xAE, 0x00, 0xFF, 0x42, 0xF0,
                /* 0970 */  0xAE, 0x00, 0x86, 0x79, 0xF9, 0x56, 0xC0, 0x35,
                /* 0978 */  0x1D, 0x4A, 0xD0, 0x67, 0x12, 0x5F, 0x17, 0x70,
                /* 0980 */  0x53, 0x64, 0xA9, 0x8E, 0x0A, 0xD0, 0x53, 0x4C,
                /* 0988 */  0x02, 0x75, 0x47, 0xF7, 0x51, 0x01, 0xC6, 0x4D,
                /* 0990 */  0xD9, 0x07, 0x54, 0x76, 0x5A, 0x60, 0x67, 0x21,
                /* 0998 */  0x76, 0x1D, 0xC1, 0x5D, 0x49, 0x18, 0xCA, 0xB3,
                /* 09A0 */  0x81, 0x2F, 0x59, 0xFC, 0x70, 0x00, 0x03, 0xDC,
                /* 09A8 */  0xB3, 0x38, 0xC4, 0x08, 0xB1, 0xD9, 0x81, 0xEB,
                /* 09B0 */  0x75, 0xD2, 0x70, 0x2F, 0x44, 0xEC, 0xFF, 0x7F,
                /* 09B8 */  0x32, 0x00, 0xE3, 0x51, 0x1B, 0x1C, 0x27, 0x9D,
                /* 09C0 */  0xF0, 0x91, 0x9E, 0x59, 0xF8, 0x49, 0x19, 0x30,
                /* 09C8 */  0x71, 0xF2, 0x03, 0xE3, 0xC9, 0x1A, 0xC6, 0x00,
                /* 09D0 */  0xB8, 0xBC, 0x57, 0x95, 0x81, 0xFC, 0x43, 0x90,
                /* 09D8 */  0x20, 0x18, 0xD4, 0x29, 0x19, 0x38, 0x1C, 0xC5,
                /* 09E0 */  0x70, 0xA7, 0x64, 0x78, 0x50, 0xF8, 0xC3, 0x00,
                /* 09E8 */  0xE6, 0x46, 0xE8, 0x7B, 0x82, 0xA1, 0xDE, 0x93,
                /* 09F0 */  0x0E, 0xE3, 0x91, 0xD0, 0x04, 0x3E, 0x2D, 0xC3,
                /* 09F8 */  0xFA, 0xFF, 0x9F, 0x96, 0xF9, 0x39, 0x21, 0xFE,
                /* 0A00 */  0x53, 0xCE, 0xFB, 0xC5, 0x83, 0xB2, 0x31, 0xA2,
                /* 0A08 */  0xBC, 0x2A, 0xFB, 0x9C, 0x69, 0x14, 0x76, 0x4B,
                /* 0A10 */  0x7E, 0x73, 0x78, 0x55, 0xF6, 0x69, 0xF9, 0xDC,
                /* 0A18 */  0x22, 0xBD, 0x2F, 0x7B, 0xE4, 0x31, 0xE3, 0xC4,
                /* 0A20 */  0x0A, 0x12, 0xE8, 0x7D, 0x23, 0x4A, 0xD8, 0x18,
                /* 0A28 */  0xE1, 0x02, 0x3D, 0x2D, 0xB3, 0x63, 0xBB, 0x87,
                /* 0A30 */  0xEC, 0xB3, 0x02, 0xEE, 0xEC, 0x00, 0x77, 0x7A,
                /* 0A38 */  0xFC, 0xF4, 0x00, 0x38, 0x01, 0x7A, 0x7A, 0x00,
                /* 0A40 */  0xDB, 0x79, 0x03, 0xEE, 0x81, 0x00, 0x71, 0xFC,
                /* 0A48 */  0x47, 0x05, 0xBF, 0xB2, 0x50, 0x38, 0x7E, 0x6C,
                /* 0A50 */  0xE7, 0xC7, 0x12, 0xDC, 0xE1, 0xC0, 0x47, 0x06,
                /* 0A58 */  0x1F, 0x20, 0x71, 0x43, 0xF1, 0xA1, 0x02, 0x79,
                /* 0A60 */  0x16, 0x00, 0xC5, 0xE8, 0xD9, 0x08, 0xD8, 0x0D,
                /* 0A68 */  0xE6, 0xA5, 0x25, 0xCA, 0xFF, 0xFF, 0xBD, 0x81,
                /* 0A70 */  0x9D, 0x52, 0x70, 0x07, 0x01, 0xF0, 0x1D, 0x03,
                /* 0A78 */  0xC0, 0x3B, 0x18, 0x2E, 0x6B, 0xCC, 0x28, 0x21,
                /* 0A80 */  0x30, 0x1A, 0x33, 0xEE, 0x10, 0xC2, 0x4F, 0x04,
                /* 0A88 */  0xB8, 0x31, 0x7B, 0xDC, 0x1E, 0x33, 0xEE, 0x38,
                /* 0A90 */  0xCB, 0x47, 0xF5, 0x94, 0x11, 0xCA, 0x07, 0x0E,
                /* 0A98 */  0x76, 0xCE, 0x78, 0x23, 0xE0, 0x43, 0x07, 0x1E,
                /* 0AA0 */  0x07, 0x18, 0xDC, 0x91, 0x02, 0x8C, 0x97, 0x03,
                /* 0AA8 */  0x36, 0x76, 0x70, 0x07, 0x21, 0xA7, 0x40, 0x96,
                /* 0AB0 */  0x0E, 0xA3, 0xB1, 0xE3, 0x64, 0x03, 0xE9, 0x18,
                /* 0AB8 */  0xE3, 0x43, 0xAE, 0xC7, 0x8E, 0x1B, 0xAC, 0xC7,
                /* 0AC0 */  0x8E, 0x3B, 0xBE, 0x60, 0xFF, 0xFF, 0xC7, 0x17,
                /* 0AC8 */  0x30, 0x8C, 0x81, 0x8B, 0x1F, 0x06, 0xFA, 0xE6,
                /* 0AD0 */  0xE7, 0xD1, 0x19, 0xDC, 0xC3, 0xF6, 0x09, 0x26,
                /* 0AD8 */  0xC6, 0x1B, 0x4C, 0x88, 0x47, 0x96, 0x97, 0x96,
                /* 0AE0 */  0x08, 0x0F, 0x2D, 0xBE, 0xB9, 0xBC, 0xB4, 0xF8,
                /* 0AE8 */  0x16, 0x63, 0x94, 0x10, 0x11, 0x0E, 0x26, 0xCE,
                /* 0AF0 */  0x13, 0x8C, 0x11, 0x0E, 0x3C, 0x8A, 0x21, 0x22,
                /* 0AF8 */  0x9C, 0x40, 0x88, 0x93, 0x3E, 0xD9, 0x20, 0xE1,
                /* 0B00 */  0x63, 0x84, 0x8D, 0x16, 0xE5, 0x09, 0x86, 0x8D,
                /* 0B08 */  0x85, 0x9F, 0x57, 0x3C, 0x78, 0x7E, 0x5A, 0xF3,
                /* 0B10 */  0x5D, 0xD0, 0x93, 0x39, 0xC7, 0x87, 0x2C, 0x4F,
                /* 0B18 */  0xED, 0x71, 0xD2, 0x87, 0x59, 0xDC, 0xA0, 0x1E,
                /* 0B20 */  0x1C, 0xD9, 0x5D, 0xC7, 0xC7, 0x6B, 0xEC, 0x29,
                /* 0B28 */  0xC8, 0x43, 0xE0, 0x27, 0x02, 0x5F, 0x10, 0x3D,
                /* 0B30 */  0x59, 0xDF, 0xF5, 0xD8, 0xBD, 0xCC, 0x18, 0xD5,
                /* 0B38 */  0x4F, 0x01, 0x75, 0x4C, 0x39, 0x83, 0x57, 0x08,
                /* 0B40 */  0x76, 0xCF, 0xF3, 0x21, 0xDB, 0x77, 0x49, 0x36,
                /* 0B48 */  0x0A, 0xDC, 0x21, 0xC1, 0x67, 0x24, 0x7E, 0xAA,
                /* 0B50 */  0xF0, 0x30, 0x3C, 0x0A, 0x18, 0x33, 0x78, 0x47,
                /* 0B58 */  0x38, 0xB4, 0x10, 0x07, 0xFC, 0xBE, 0xCB, 0x86,
                /* 0B60 */  0x1A, 0xE3, 0xF4, 0x7C, 0xFE, 0x60, 0x83, 0x80,
                /* 0B68 */  0x0F, 0x75, 0xA8, 0x1E, 0xE6, 0x51, 0xBD, 0x14,
                /* 0B70 */  0x32, 0x9C, 0xB3, 0x83, 0x3B, 0x08, 0xEC, 0xF1,
                /* 0B78 */  0xC3, 0x83, 0xE0, 0x37, 0x4B, 0x3E, 0x08, 0x76,
                /* 0B80 */  0xBE, 0x79, 0x83, 0x33, 0xC8, 0xFF, 0xFF, 0x18,
                /* 0B88 */  0x60, 0x9F, 0xA9, 0x7C, 0x34, 0x41, 0x1C, 0x01,
                /* 0B90 */  0xD1, 0xE7, 0x0F, 0x8F, 0xE1, 0x4D, 0x8E, 0x0F,
                /* 0B98 */  0x07, 0x7B, 0xF4, 0xC0, 0x9D, 0x44, 0xE0, 0x1E,
                /* 0BA0 */  0xBB, 0x0E, 0xDA, 0xD7, 0x38, 0x5F, 0xB4, 0x60,
                /* 0BA8 */  0xDC, 0xF7, 0x9E, 0x45, 0xC0, 0x8F, 0xF1, 0xD8,
                /* 0BB0 */  0x02, 0x8E, 0x43, 0x09, 0xB8, 0x83, 0x1D, 0xD7,
                /* 0BB8 */  0x38, 0x84, 0xA2, 0xC0, 0xE8, 0x50, 0x82, 0x8B,
                /* 0BC0 */  0x01, 0x24, 0x18, 0xC7, 0x38, 0xA3, 0xA1, 0x2F,
                /* 0BC8 */  0x91, 0x3E, 0xA4, 0xC1, 0x19, 0x34, 0xEC, 0x79,
                /* 0BD0 */  0x3E, 0xA1, 0x70, 0x7B, 0x02, 0x14, 0x9D, 0x50,
                /* 0BD8 */  0x40, 0x86, 0xFB, 0x0C, 0x82, 0x3D, 0x21, 0xF0,
                /* 0BE0 */  0x33, 0x08, 0xFB, 0xFF, 0x1F, 0x1C, 0x3D, 0xEE,
                /* 0BE8 */  0xF7, 0x46, 0x9F, 0x1A, 0xD9, 0xDC, 0x1F, 0x02,
                /* 0BF0 */  0x4E, 0xE0, 0xDC, 0xD9, 0xA9, 0x19, 0x77, 0x66,
                /* 0BF8 */  0xC0, 0x9E, 0x3F, 0x3C, 0x04, 0x7E, 0x2E, 0xF0,
                /* 0C00 */  0xF0, 0x3D, 0x04, 0xFC, 0xE0, 0x1F, 0x98, 0x0D,
                /* 0C08 */  0x0E, 0xC6, 0x53, 0x84, 0xAF, 0x1D, 0x1C, 0x9C,
                /* 0C10 */  0x9F, 0x06, 0x0C, 0xCE, 0x5F, 0xA1, 0x3E, 0xCF,
                /* 0C18 */  0x33, 0x70, 0xEC, 0xA9, 0xD7, 0xF7, 0x0E, 0xCF,
                /* 0C20 */  0xD7, 0x87, 0x0A, 0xFC, 0x4D, 0xCF, 0x87, 0x0A,
                /* 0C28 */  0x70, 0x1C, 0x1E, 0xF8, 0x61, 0x85, 0x0D, 0xE1,
                /* 0C30 */  0x51, 0x00, 0x7F, 0x6A, 0xF1, 0xF1, 0x2F, 0xCE,
                /* 0C38 */  0x53, 0x04, 0xBB, 0x8D, 0x60, 0x0F, 0x17, 0x80,
                /* 0C40 */  0xA3, 0x68, 0x67, 0x31, 0x54, 0x98, 0xB3, 0x18,
                /* 0C48 */  0xF9, 0xFF, 0x9F, 0xA3, 0x50, 0x67, 0x31, 0x7A,
                /* 0C50 */  0xB8, 0x00, 0x5C, 0x08, 0x3E, 0x1E, 0x80, 0xE6,
                /* 0C58 */  0x20, 0xF0, 0xB8, 0xE0, 0x0B, 0xC1, 0x91, 0x1C,
                /* 0C60 */  0xC8, 0xD3, 0x01, 0xE0, 0x53, 0x1E, 0x09, 0x3D,
                /* 0C68 */  0x1F, 0x59, 0x10, 0x0C, 0xEA, 0x7C, 0xE0, 0x13,
                /* 0C70 */  0x8A, 0x8F, 0x1D, 0xFC, 0x6C, 0xE0, 0x1B, 0xB9,
                /* 0C78 */  0x87, 0xCA, 0x4F, 0xCD, 0x3E, 0x69, 0xF3, 0xE0,
                /* 0C80 */  0x3F, 0x69, 0xD9, 0x80, 0x51, 0xA0, 0x61, 0xA0,
                /* 0C88 */  0x46, 0xE4, 0x23, 0xD2, 0xFF, 0xFF, 0xB9, 0x0D,
                /* 0C90 */  0x1B, 0x60, 0x68, 0xF4, 0x1C, 0x0E, 0xE3, 0x80,
                /* 0C98 */  0xEB, 0x73, 0x38, 0x76, 0x40, 0x3E, 0x87, 0xC3,
                /* 0CA0 */  0x3F, 0x47, 0xC3, 0x1F, 0x1B, 0x3B, 0xDD, 0xF3,
                /* 0CA8 */  0x81, 0xC1, 0xBA, 0x7E, 0x63, 0x06, 0x06, 0xB6,
                /* 0CB0 */  0x6F, 0x91, 0x07, 0x06, 0x1C, 0x51, 0xCF, 0xC6,
                /* 0CB8 */  0x57, 0x08, 0x0F, 0x0C, 0x6C, 0x80, 0x1E, 0x18,
                /* 0CC0 */  0xF0, 0x89, 0x05, 0x21, 0x27, 0x03, 0x43, 0x9D,
                /* 0CC8 */  0x32, 0x8C, 0x1C, 0xF3, 0x89, 0xC3, 0xC3, 0xF0,
                /* 0CD0 */  0xA1, 0x22, 0xEA, 0x33, 0xC0, 0x23, 0x1E, 0x1B,
                /* 0CD8 */  0x1B, 0xFB, 0xFF, 0x8F, 0x0D, 0x2C, 0xC7, 0x16,
                /* 0CE0 */  0x8F, 0x0D, 0xFC, 0x47, 0x78, 0xFC, 0xD8, 0xE0,
                /* 0CE8 */  0x8C, 0xE5, 0xD1, 0xC4, 0x97, 0x99, 0x23, 0x3B,
                /* 0CF0 */  0x8D, 0x33, 0x7B, 0x0D, 0xF1, 0xD1, 0xEE, 0xF1,
                /* 0CF8 */  0xDB, 0x63, 0x03, 0x97, 0x85, 0xB1, 0x01, 0xA5,
                /* 0D00 */  0x90, 0x63, 0x43, 0x1F, 0x52, 0x7C, 0x0A, 0xB0,
                /* 0D08 */  0x71, 0x54, 0x32, 0x0F, 0x1F, 0xAF, 0x7C, 0x62,
                /* 0D10 */  0x38, 0xBA, 0x20, 0x6F, 0xE8, 0xBE, 0x5C, 0xF8,
                /* 0D18 */  0x48, 0x63, 0x30, 0x5F, 0x5A, 0x7C, 0x06, 0xE5,
                /* 0D20 */  0x43, 0x04, 0x97, 0x86, 0x21, 0x02, 0xA5, 0x50,
                /* 0D28 */  0x43, 0x44, 0x8F, 0xE7, 0xFF, 0xFF, 0x08, 0xE6,
                /* 0D30 */  0x21, 0xB2, 0xA1, 0x81, 0xF7, 0x1B, 0xA3, 0xA1,
                /* 0D38 */  0x01, 0xA1, 0x70, 0x43, 0x43, 0x1F, 0xD6, 0x7C,
                /* 0D40 */  0x08, 0x60, 0x10, 0xBE, 0x0D, 0xB0, 0xAB, 0x80,
                /* 0D48 */  0xAF, 0x42, 0x1E, 0xE0, 0x93, 0x28, 0x1B, 0x1E,
                /* 0D50 */  0xF8, 0x06, 0xE5, 0xE1, 0x01, 0x9F, 0xF0, 0xC0,
                /* 0D58 */  0x5E, 0x85, 0x87, 0x47, 0xCF, 0x4A, 0x1E, 0x1E,
                /* 0D60 */  0x3C, 0x90, 0xC7, 0x08, 0x76, 0x0E, 0xF1, 0xE0,
                /* 0D68 */  0xC0, 0x61, 0x62, 0x70, 0xA0, 0x38, 0xFA, 0xE3,
                /* 0D70 */  0x86, 0xC0, 0x2E, 0xB3, 0x9E, 0x38, 0xBF, 0xB2,
                /* 0D78 */  0x78, 0x50, 0xF8, 0xFF, 0xFF, 0x11, 0x00, 0xD6,
                /* 0D80 */  0x71, 0x06, 0x7C, 0xC1, 0x0E, 0x07, 0xE8, 0x63,
                /* 0D88 */  0x22, 0x1B, 0xC3, 0x43, 0xC4, 0x83, 0xAB, 0x07,
                /* 0D90 */  0xE2, 0x6B, 0xC7, 0x6B, 0x31, 0xEE, 0x68, 0x00,
                /* 0D98 */  0x2E, 0x15, 0x47, 0x03, 0xA0, 0x74, 0xB0, 0x05,
                /* 0DA0 */  0xC7, 0x3D, 0xCD, 0x47, 0x3B, 0xCC, 0x1C, 0x3D,
                /* 0DA8 */  0x80, 0xE7, 0x37, 0x8F, 0x96, 0x9F, 0xDF, 0x00,
                /* 0DB0 */  0x47, 0x41, 0x0F, 0xB6, 0x74, 0xE0, 0x8E, 0x06,
                /* 0DB8 */  0x83, 0x3A, 0xBF, 0x61, 0xFE, 0xFF, 0xE7, 0x37,
                /* 0DC0 */  0x30, 0x44, 0x00, 0xD7, 0x99, 0xC6, 0xE7, 0x17,
                /* 0DC8 */  0x38, 0x43, 0x3D, 0x68, 0x5F, 0x13, 0x3C, 0x6B,
                /* 0DD0 */  0xDF, 0xB8, 0xD8, 0x39, 0x01, 0x5C, 0x03, 0xF2,
                /* 0DD8 */  0x49, 0x07, 0x38, 0x02, 0x9F, 0xC4, 0x03, 0xFE,
                /* 0DE0 */  0xA1, 0x81, 0x79, 0x58, 0x1E, 0x1A, 0xF0, 0x39,
                /* 0DE8 */  0x1A, 0xE0, 0x4E, 0x14, 0xE0, 0xB9, 0x8D, 0xE0,
                /* 0DF0 */  0x0E, 0x14, 0xC0, 0xE2, 0xFF, 0x7F, 0xA0, 0x00,
                /* 0DF8 */  0x56, 0x47, 0x7C, 0x8F, 0x8B, 0x43, 0xE3, 0x10,
                /* 0E00 */  0x1F, 0xD2, 0xCE, 0xD9, 0xE7, 0xAF, 0x33, 0xC5,
                /* 0E08 */  0x9D, 0x45, 0xC0, 0x70, 0xA2, 0x47, 0xBC, 0xD3,
                /* 0E10 */  0x0C, 0xE4, 0x07, 0x86, 0x84, 0xC0, 0xA0, 0x4E,
                /* 0E18 */  0x40, 0x1E, 0x8A, 0x0F, 0x06, 0x1C, 0xD8, 0x47,
                /* 0E20 */  0x04, 0x76, 0x2E, 0x60, 0x07, 0x28, 0xC3, 0xF1,
                /* 0E28 */  0xB3, 0x80, 0x4F, 0x09, 0x0F, 0x35, 0xC7, 0xF1,
                /* 0E30 */  0xB8, 0xE9, 0xBB, 0x99, 0x21, 0xD9, 0xD5, 0xE0,
                /* 0E38 */  0xF9, 0x07, 0x7B, 0xDA, 0x85, 0x73, 0xC4, 0x05,
                /* 0E40 */  0x17, 0x81, 0xCF, 0x3A, 0x1E, 0x05, 0x3F, 0x3D,
                /* 0E48 */  0x78, 0x8E, 0x6F, 0x0C, 0x3E, 0x3D, 0x30, 0xF7,
                /* 0E50 */  0x02, 0xCC, 0x1D, 0xBA, 0x85, 0x70, 0x4C, 0xAF,
                /* 0E58 */  0x0F, 0x31, 0x8E, 0xFA, 0xB1, 0xA1, 0x2D, 0x01,
                /* 0E60 */  0xDA, 0x50, 0x74, 0x07, 0x78, 0x19, 0x88, 0x12,
                /* 0E68 */  0xE2, 0x08, 0x22, 0xB5, 0x86, 0xA2, 0x99, 0x47,
                /* 0E70 */  0x8A, 0x12, 0x30, 0x9E, 0x61, 0x1A, 0x9B, 0x8C,
                /* 0E78 */  0x20, 0x63, 0x84, 0x8E, 0x13, 0x2C, 0x4A, 0xB4,
                /* 0E80 */  0x57, 0x80, 0xF6, 0x47, 0xCB, 0x56, 0xAC, 0xB1,
                /* 0E88 */  0x38, 0xD2, 0xC9, 0x12, 0x3D, 0x6C, 0x1F, 0xB3,
                /* 0E90 */  0xF1, 0xA7, 0x55, 0xCC, 0xFF, 0x9F, 0xE0, 0x55,
                /* 0E98 */  0xC5, 0x07, 0x05, 0x1F, 0x00, 0xF0, 0x2E, 0x01,
                /* 0EA0 */  0x75, 0x75, 0xF4, 0xB8, 0x7D, 0xDE, 0x00, 0xFF,
                /* 0EA8 */  0xF5, 0x02, 0x4B, 0x50, 0xFE, 0x20, 0x50, 0x23,
                /* 0EB0 */  0x33, 0xB4, 0xC7, 0xF9, 0x36, 0x63, 0xC8, 0x27,
                /* 0EB8 */  0x27, 0x13, 0x58, 0xEC, 0x09, 0x15, 0x68, 0x0C,
                /* 0EC0 */  0xFE, 0x69, 0xC3, 0xD7, 0x76, 0xCF, 0xD7, 0xE7,
                /* 0EC8 */  0x38, 0x80, 0x0F, 0xFF, 0xFF, 0x73, 0x1C, 0x60,
                /* 0ED0 */  0x68, 0x38, 0xB8, 0xA3, 0x0F, 0xDC, 0x2B, 0x09,
                /* 0ED8 */  0x3F, 0xFC, 0x00, 0xCE, 0x80, 0x1E, 0x7E, 0xC0,
                /* 0EE0 */  0x3E, 0x54, 0xDC, 0x10, 0x78, 0x84, 0x15, 0xD1,
                /* 0EE8 */  0xC3, 0x80, 0x45, 0xC3, 0xA0, 0xCE, 0x6B, 0xD8,
                /* 0EF0 */  0xFF, 0xFF, 0x79, 0x0D, 0xB6, 0x38, 0x70, 0x1D,
                /* 0EF8 */  0x54, 0x7D, 0x36, 0x86, 0x33, 0xA8, 0xD3, 0xEE,
                /* 0F00 */  0xFD, 0xAE, 0x40, 0x2E, 0x22, 0x1E, 0xF4, 0xF9,
                /* 0F08 */  0x3C, 0x3B, 0xB0, 0x03, 0x1B, 0xF0, 0x1F, 0x1B,
                /* 0F10 */  0x9C, 0x1B, 0xC0, 0x53, 0x74, 0x84, 0x63, 0x03,
                /* 0F18 */  0xFB, 0x89, 0x0D, 0x38, 0x9D, 0xED, 0xE0, 0x5C,
                /* 0F20 */  0xA1, 0xD8, 0x6D, 0x1F, 0x37, 0x34, 0xB0, 0xD9,
                /* 0F28 */  0x18, 0x1A, 0xC8, 0xFE, 0xFF, 0x87, 0x4F, 0xE0,
                /* 0F30 */  0x75, 0xE8, 0xE2, 0x97, 0x8A, 0xE7, 0x2F, 0x7E,
                /* 0F38 */  0xB8, 0x03, 0x9C, 0x4B, 0x3B, 0xD9, 0xA1, 0xC4,
                /* 0F40 */  0x1C, 0xEE, 0x00, 0x29, 0xFF, 0xFF, 0xC3, 0x1D,
                /* 0F48 */  0xB8, 0xEE, 0x72, 0xEF, 0x0C, 0x2F, 0x0D, 0x9E,
                /* 0F50 */  0xD3, 0xBB, 0x9D, 0x31, 0x5E, 0xEA, 0x8C, 0x10,
                /* 0F58 */  0x85, 0xDD, 0x06, 0xA2, 0xD9, 0xDB, 0xE1, 0x8E,
                /* 0F60 */  0x9C, 0xF0, 0x38, 0x66, 0xA4, 0x27, 0xBD, 0x60,
                /* 0F68 */  0x91, 0x22, 0x1E, 0x4E, 0x94, 0x10, 0xC1, 0x5E,
                /* 0F70 */  0x27, 0x9E, 0xF2, 0x1E, 0xEE, 0x98, 0x90, 0xC3,
                /* 0F78 */  0x1D, 0xD0, 0x71, 0x7D, 0xB8, 0x03, 0x2A, 0x27,
                /* 0F80 */  0x2A, 0xFC, 0xE1, 0x0E, 0x30, 0xFB, 0xFF, 0x3F,
                /* 0F88 */  0xDC, 0x01, 0x8C, 0x3A, 0xA3, 0xE1, 0x0E, 0x77,
                /* 0F90 */  0x60, 0x3B, 0xFD, 0x00, 0xE7, 0xFF, 0xFF, 0xE9,
                /* 0F98 */  0x07, 0x78, 0x8F, 0x15, 0xC6, 0x18, 0x78, 0xB4,
                /* 0FA0 */  0x25, 0x51, 0x20, 0x87, 0x81, 0x41, 0x11, 0x38,
                /* 0FA8 */  0xC8, 0xA1, 0x8E, 0x06, 0x3B, 0xBD, 0x40, 0x99,
                /* 0FB0 */  0xCB, 0x81, 0x9E, 0xC2, 0x33, 0x82, 0x0F, 0x60,
                /* 0FB8 */  0x60, 0x3F, 0xD5, 0x01, 0x87, 0x53, 0x03, 0x3E,
                /* 0FC0 */  0xD0, 0x09, 0x05, 0x3D, 0x0A, 0x9F, 0x4D, 0xC0,
                /* 0FC8 */  0x7B, 0xA4, 0x03, 0x36, 0xFF, 0xFF, 0xB3, 0x09,
                /* 0FD0 */  0x7B, 0x35, 0xFA, 0x6C, 0x82, 0x63, 0x31, 0xEA,
                /* 0FD8 */  0x1B, 0xC4, 0x21, 0xBE, 0x74, 0xF8, 0xDC, 0xF8,
                /* 0FE0 */  0x4E, 0xE3, 0x4B, 0x00, 0xE6, 0xFA, 0x61, 0x82,
                /* 0FE8 */  0x31, 0x21, 0xF4, 0xC9, 0xF2, 0xA9, 0x0E, 0x38,
                /* 0FF0 */  0x1D, 0x4E, 0xE0, 0x8D, 0x1E, 0x77, 0x5A, 0xF0,
                /* 0FF8 */  0x70, 0x38, 0xB8, 0x67, 0xF3, 0x2C, 0xF1, 0x44,
                /* 1000 */  0xE4, 0x71, 0xF8, 0x74, 0x02, 0xBC, 0x0E, 0x18,
                /* 1008 */  0x98, 0x19, 0x84, 0x7F, 0x08, 0x61, 0xA7, 0x4F,
                /* 1010 */  0x1F, 0x99, 0x3C, 0xF7, 0x77, 0x23, 0x9F, 0x4E,
                /* 1018 */  0x00, 0x5F, 0xFF, 0xFF, 0xA3, 0x1E, 0xB0, 0x90,
                /* 1020 */  0xA8, 0xE1, 0x9C, 0x87, 0x11, 0x05, 0x83, 0x3A,
                /* 1028 */  0xEA, 0x01, 0xD6, 0x2E, 0x7A, 0x36, 0x86, 0xA0,
                /* 1030 */  0x8B, 0xC0, 0x19, 0x84, 0x78, 0xBC, 0x7B, 0xC5,
                /* 1038 */  0x8B, 0xE4, 0x3B, 0x40, 0x9C, 0x47, 0x3D, 0x83,
                /* 1040 */  0xBD, 0x7D, 0x3C, 0x48, 0x44, 0x89, 0xF3, 0xA8,
                /* 1048 */  0xE7, 0xD1, 0x87, 0xF2, 0xE4, 0x43, 0x9D, 0x7E,
                /* 1050 */  0xAC, 0xB0, 0x81, 0x9E, 0xF8, 0x5E, 0xF4, 0x42,
                /* 1058 */  0x1A, 0xE1, 0x51, 0x8F, 0x09, 0x7A, 0x79, 0xE8,
                /* 1060 */  0x70, 0xE5, 0xA3, 0x1E, 0x60, 0xE5, 0xFF, 0x7F,
                /* 1068 */  0xD4, 0x03, 0xF8, 0xFF, 0xFF, 0x3F, 0xEA, 0x81,
                /* 1070 */  0xF9, 0xF4, 0x04, 0xF8, 0x3F, 0xD6, 0xE0, 0x8E,
                /* 1078 */  0x8A, 0x60, 0x3B, 0x3F, 0x01, 0x2E, 0xFE, 0xFF,
                /* 1080 */  0xE7, 0x27, 0x30, 0x0D, 0xDD, 0xE7, 0x27, 0x30,
                /* 1088 */  0x8F, 0x16, 0xE6, 0x01, 0x01, 0x71, 0x56, 0x44,
                /* 1090 */  0x85, 0x7F, 0xC8, 0x18, 0x0E, 0x15, 0x1C, 0x48,
                /* 1098 */  0xBF, 0x28, 0x1F, 0x01, 0x81, 0xCB, 0x51, 0x11,
                /* 10A0 */  0x38, 0x9C, 0x59, 0xF0, 0x42, 0x4E, 0x1D, 0xE8,
                /* 10A8 */  0xF1, 0x18, 0xF4, 0x95, 0xC3, 0x57, 0x02, 0x7E,
                /* 10B0 */  0xE4, 0x60, 0xA1, 0x8F, 0x1C, 0xA0, 0x3A, 0x2C,
                /* 10B8 */  0x82, 0xEF, 0xC8, 0x01, 0x8E, 0xEB, 0x55, 0x60,
                /* 10C0 */  0xFE, 0xFF, 0x07, 0x66, 0xB7, 0x83, 0xD7, 0x4F,
                /* 10C8 */  0x4F, 0xE2, 0x31, 0xEA, 0x38, 0x43, 0x14, 0x8E,
                /* 10D0 */  0x49, 0x0E, 0x06, 0x91, 0xDE, 0xC1, 0xD8, 0x00,
                /* 10D8 */  0x5F, 0x5E, 0x7C, 0xA8, 0xF2, 0x31, 0x10, 0x18,
                /* 10E0 */  0x42, 0x9C, 0x0D, 0x3F, 0x5D, 0x18, 0xF3, 0x74,
                /* 10E8 */  0xF8, 0x31, 0x10, 0xB0, 0x2E, 0xF5, 0x0C, 0x88,
                /* 10F0 */  0x12, 0x77, 0x0C, 0x04, 0x52, 0xFF, 0xFF, 0x63,
                /* 10F8 */  0x20, 0x70, 0xBD, 0x04, 0x7A, 0xCC, 0x67, 0xFC,
                /* 1100 */  0xE6, 0xF7, 0xE4, 0x17, 0xA5, 0xB6, 0xEB, 0x9F,
                /* 1108 */  0xEE, 0x06, 0xC6, 0x7A, 0x08, 0x78, 0x02, 0xF4,
                /* 1110 */  0xFD, 0xCF, 0xC7, 0x8A, 0x28, 0x01, 0xA3, 0xC4,
                /* 1118 */  0x7A, 0x11, 0x34, 0x66, 0x8C, 0x60, 0xEF, 0x80,
                /* 1120 */  0x31, 0x1F, 0x09, 0x3D, 0xC2, 0x68, 0xC1, 0x0D,
                /* 1128 */  0xF4, 0x18, 0xC8, 0x84, 0x1D, 0x03, 0x01, 0x12,
                /* 1130 */  0xFD, 0xFF, 0x8F, 0x81, 0x00, 0x23, 0x4F, 0x50,
                /* 1138 */  0xC0, 0xF6, 0xFF, 0x7F, 0x82, 0x02, 0x0C, 0x1D,
                /* 1140 */  0x05, 0xC1, 0x7C, 0x86, 0x02, 0xAC, 0x1D, 0x05,
                /* 1148 */  0xC1, 0x3E, 0x5A, 0x98, 0xA3, 0xE0, 0x31, 0x5F,
                /* 1150 */  0x1E, 0x06, 0xA2, 0xC1, 0x24, 0xFC, 0xFF, 0x8F,
                /* 1158 */  0x82, 0xD8, 0x50, 0x40, 0x3A, 0x77, 0x38, 0xD4,
                /* 1160 */  0xE9, 0x05, 0x7D, 0x50, 0xF0, 0xB0, 0x9F, 0x0A,
                /* 1168 */  0x3C, 0x89, 0x53, 0xF5, 0xB5, 0xE0, 0x28, 0x9E,
                /* 1170 */  0x00, 0x7C, 0x18, 0x04, 0xFE, 0x43, 0x83, 0x35,
                /* 1178 */  0x89, 0xE2, 0x87, 0x06, 0xEA, 0xB3, 0x07, 0xF8,
                /* 1180 */  0x86, 0x06, 0x8E, 0xA8, 0x67, 0x1C, 0xF4, 0x89,
                /* 1188 */  0xC8, 0x67, 0x83, 0x98, 0x6F, 0x1E, 0x11, 0x9E,
                /* 1190 */  0x3C, 0x7C, 0x7D, 0x60, 0x27, 0x4F, 0x9F, 0x9A,
                /* 1198 */  0x02, 0x45, 0x79, 0xDF, 0xE0, 0x71, 0x4E, 0x39,
                /* 11A0 */  0xA0, 0x3A, 0xFC, 0x82, 0xE3, 0xC0, 0x0B, 0xE3,
                /* 11A8 */  0xFF, 0x7F, 0xE0, 0x65, 0xC7, 0x29, 0x1F, 0x4B,
                /* 11B0 */  0xC0, 0x77, 0x26, 0x85, 0x73, 0x73, 0xF1, 0x1D,
                /* 11B8 */  0x8F, 0x9D, 0x06, 0xC0, 0xA6, 0xE3, 0x34, 0x00,
                /* 11C0 */  0x94, 0x62, 0x0D, 0x0C, 0x7D, 0x54, 0x31, 0x6A,
                /* 11C8 */  0xEF, 0x93, 0xD0, 0xC4, 0xD8, 0x75, 0xE4, 0x25,
                /* 11D0 */  0xC5, 0xD7, 0x93, 0x67, 0x2D, 0xF0, 0xF9, 0x18,
                /* 11D8 */  0x1B, 0x50, 0x3A, 0x81, 0xF1, 0xA3, 0x27, 0x98,
                /* 11E0 */  0x60, 0x0E, 0xE6, 0x55, 0xDC, 0x83, 0x7C, 0x12,
                /* 11E8 */  0x62, 0xA7, 0x1C, 0xF0, 0xFE, 0xFF, 0x0F, 0x9E,
                /* 11F0 */  0x80, 0x3D, 0x11, 0xA7, 0x4E, 0x54, 0xEC, 0x37,
                /* 11F8 */  0x97, 0x0F, 0x9E, 0x80, 0xBC, 0x3B, 0x83, 0x11,
                /* 1200 */  0xCE, 0x3F, 0xC4, 0x03, 0x44, 0x88, 0x67, 0x4E,
                /* 1208 */  0x83, 0xC4, 0x09, 0xF2, 0x32, 0xF0, 0xE0, 0xE9,
                /* 1210 */  0x7B, 0x67, 0x9C, 0x67, 0xCF, 0x28, 0x6F, 0x9E,
                /* 1218 */  0x46, 0x38, 0xFA, 0x78, 0x06, 0x7A, 0xE7, 0x0C,
                /* 1220 */  0xF1, 0xD6, 0xF9, 0x0C, 0xFA, 0xEA, 0x69, 0xB4,
                /* 1228 */  0x58, 0xC1, 0x8F, 0xF1, 0xC1, 0x93, 0x45, 0x3E,
                /* 1230 */  0x23, 0xD1, 0x83, 0x27, 0xEC, 0xFF, 0xFF, 0xC1,
                /* 1238 */  0x13, 0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x09, 0x18,
                /* 1240 */  0x3B, 0x83, 0x01, 0xC7, 0x13, 0x1B, 0x38, 0xCE,
                /* 1248 */  0x60, 0xC0, 0xE5, 0xE8, 0x0F, 0x9E, 0x93, 0x26,
                /* 1250 */  0x8C, 0x23, 0x13, 0xF8, 0xFF, 0xFF, 0x47, 0x26,
                /* 1258 */  0xC0, 0xD5, 0x58, 0x61, 0x8C, 0x81, 0x27, 0x7B,
                /* 1260 */  0x1A, 0xD0, 0xE3, 0x80, 0x45, 0x1D, 0x98, 0x04,
                /* 1268 */  0xC3, 0x59, 0x7C, 0x58, 0xF0, 0x11, 0x81, 0x1F,
                /* 1270 */  0x16, 0x3C, 0x82, 0x8A, 0xC7, 0x49, 0x8F, 0x45,
                /* 1278 */  0x3E, 0x77, 0xB2, 0x43, 0x82, 0x0F, 0x21, 0x1E,
                /* 1280 */  0xA4, 0x0F, 0xB3, 0xE0, 0x39, 0x58, 0xC1, 0xBB,
                /* 1288 */  0x2E, 0xC1, 0x39, 0x15, 0x00, 0x66, 0xFE, 0xFF,
                /* 1290 */  0x04, 0xB5, 0xAB, 0x38, 0x5D, 0xB0, 0x00, 0x07,
                /* 1298 */  0x30, 0xD9, 0x38, 0x86, 0x50, 0x0E, 0x1F, 0x5D,
                /* 12A0 */  0x3D, 0x4D, 0x76, 0x24, 0x83, 0x19, 0x0B, 0x52,
                /* 12A8 */  0x27, 0x01, 0x0F, 0xC0, 0x81, 0x60, 0xA4, 0x9D,
                /* 12B0 */  0x44, 0xA3, 0x31, 0x9C, 0xD5, 0xC2, 0x08, 0xCE,
                /* 12B8 */  0x20, 0x3E, 0x8E, 0x38, 0xD7, 0x91, 0x0A, 0xBD,
                /* 12C0 */  0x1B, 0x1D, 0xA7, 0x50, 0x41, 0xEE, 0x25, 0x74,
                /* 12C8 */  0xDE, 0xBE, 0x1B, 0xF0, 0x77, 0x9A, 0xC7, 0x62,
                /* 12D0 */  0x60, 0xDF, 0x4E, 0xC0, 0x31, 0x17, 0xAB, 0x01,
                /* 12D8 */  0x45, 0x0D, 0xC0, 0x68, 0x98, 0x53, 0xC0, 0x53,
                /* 12E0 */  0x09, 0xB8, 0x82, 0xCD, 0x0D, 0x7D, 0x61, 0xB1,
                /* 12E8 */  0xD6, 0xA9, 0xE8, 0xF8, 0xF4, 0x3E, 0x70, 0x70,
                /* 12F0 */  0xC0, 0x63, 0xF6, 0x1E, 0x1C, 0x2C, 0x34, 0x0F,
                /* 12F8 */  0x0E, 0x6C, 0xD9, 0x06, 0x87, 0x56, 0x72, 0x17,
                /* 1300 */  0x21, 0x87, 0x0F, 0xFC, 0xEC, 0x60, 0xFC, 0xFF,
                /* 1308 */  0x67, 0x07, 0x46, 0x40, 0xCF, 0x0E, 0x16, 0x92,
                /* 1310 */  0x67, 0x07, 0x36, 0x7D, 0x67, 0x11, 0x50, 0x00,
                /* 1318 */  0xF9, 0xDE, 0xE1, 0x73, 0xCB, 0xB3, 0x07, 0x1B,
                /* 1320 */  0xC3, 0xA3, 0x8B, 0xD1, 0x8C, 0xCE, 0x35, 0xDD,
                /* 1328 */  0x26, 0x50, 0x2A, 0x6E, 0x13, 0x14, 0xC4, 0x37,
                /* 1330 */  0x00, 0x27, 0xA4, 0xD1, 0x3D, 0x0D, 0x37, 0x13,
                /* 1338 */  0xE3, 0x3F, 0x62, 0xF8, 0x88, 0x70, 0x48, 0x67,
                /* 1340 */  0x6B, 0x82, 0x79, 0x20, 0xF5, 0x7E, 0xF4, 0x65,
                /* 1348 */  0x0F, 0x3F, 0xFB, 0x90, 0x0F, 0x2E, 0x9E, 0x86,
                /* 1350 */  0xAF, 0x37, 0xE4, 0xDE, 0x41, 0xA7, 0xED, 0x33,
                /* 1358 */  0x03, 0xE6, 0x30, 0xED, 0xEB, 0x54, 0x02, 0xCB,
                /* 1360 */  0xBA, 0x4A, 0x50, 0x0F, 0x17, 0x10, 0x7A, 0xA1,
                /* 1368 */  0xF1, 0xBD, 0x30, 0xC1, 0xC3, 0x99, 0x6F, 0x67,
                /* 1370 */  0xEF, 0x25, 0xEC, 0x70, 0x98, 0xE0, 0xDD, 0x30,
                /* 1378 */  0xC1, 0xBC, 0x83, 0x40, 0x8D, 0xCA, 0x83, 0xC0,
                /* 1380 */  0x1C, 0xBF, 0x4C, 0x30, 0xDF, 0x18, 0x50, 0xC9,
                /* 1388 */  0x2E, 0x5A, 0xF4, 0x0C, 0xF3, 0x0E, 0xE3, 0x4B,
                /* 1390 */  0x82, 0xAF, 0x1F, 0x3E, 0xB7, 0x78, 0x01, 0xAF,
                /* 1398 */  0x5B, 0x30, 0x08, 0x9E, 0x81, 0x5E, 0x5D, 0x0C,
                /* 13A0 */  0x15, 0x27, 0xF0, 0xAB, 0xC0, 0x1B, 0x4D, 0x88,
                /* 13A8 */  0x60, 0x86, 0x3D, 0xFC, 0x90, 0x6F, 0x31, 0x3E,
                /* 13B0 */  0x5F, 0xFA, 0x06, 0x10, 0xEB, 0x75, 0xC4, 0xFF,
                /* 13B8 */  0xFF, 0x91, 0xF2, 0x63, 0xCB, 0x01, 0x45, 0x7A,
                /* 13C0 */  0xEB, 0xF3, 0x04, 0x7C, 0x96, 0xF1, 0x71, 0xF0,
                /* 13C8 */  0xA4, 0x7C, 0xAF, 0x34, 0xFA, 0x2B, 0x84, 0x0F,
                /* 13D0 */  0x3F, 0x46, 0xF6, 0x39, 0x87, 0x1D, 0x0C, 0xD9,
                /* 13D8 */  0xA0, 0x38, 0xE2, 0x03, 0xC3, 0x4B, 0x8D, 0xA7,
                /* 13E0 */  0xC2, 0xCE, 0x5D, 0x30, 0x0E, 0x0E, 0xEC, 0x58,
                /* 13E8 */  0x84, 0x39, 0xEA, 0x81, 0xEB, 0x64, 0xE3, 0x93,
                /* 13F0 */  0x03, 0x98, 0xE1, 0x31, 0x87, 0x6B, 0x9F, 0x37,
                /* 13F8 */  0x7C, 0x33, 0xF0, 0xB8, 0xF8, 0x91, 0xC3, 0xC7,
                /* 1400 */  0x3B, 0x86, 0x7D, 0x9A, 0x3E, 0x1A, 0xBD, 0xBC,
                /* 1408 */  0xF9, 0xF4, 0x82, 0x81, 0xF5, 0xA5, 0x81, 0xC3,
                /* 1410 */  0x1A, 0x2D, 0xEC, 0x63, 0xC0, 0x99, 0xFB, 0x42,
                /* 1418 */  0x84, 0x3B, 0x75, 0x82, 0x05, 0x10, 0x7F, 0x2B,
                /* 1420 */  0x79, 0xE4, 0xF0, 0x04, 0x0C, 0xC8, 0x72, 0xAF,
                /* 1428 */  0x4B, 0x07, 0x22, 0x7E, 0xCA, 0xB3, 0xBA, 0x03,
                /* 1430 */  0x11, 0x02, 0xE3, 0x71, 0xF4, 0xF1, 0xC3, 0xB3,
                /* 1438 */  0xF1, 0x51, 0xC0, 0xC7, 0x28, 0xCF, 0xFC, 0x8C,
                /* 1440 */  0x22, 0xBD, 0x32, 0x58, 0xCB, 0x89, 0x08, 0xA5,
                /* 1448 */  0x02, 0x46, 0x81, 0x69, 0x74, 0xE7, 0xE0, 0x11,
                /* 1450 */  0x61, 0x04, 0x67, 0x10, 0x8F, 0xD6, 0x37, 0x17,
                /* 1458 */  0x18, 0xFF, 0xFF, 0x9B, 0x0B, 0xF0, 0x3A, 0x13,
                /* 1460 */  0x01, 0x97, 0xEB, 0xA5, 0x67, 0x87, 0xBB, 0x2C,
                /* 1468 */  0xB2, 0x69, 0x1B, 0xF7, 0x15, 0xD5, 0xA7, 0x63,
                /* 1470 */  0x4F, 0xFC, 0xB4, 0x61, 0x9C, 0x8C, 0x00, 0x1F,
                /* 1478 */  0x77, 0x1D, 0xC0, 0xC9, 0xFF, 0xFF, 0xAE, 0x03,
                /* 1480 */  0xF0, 0xFF, 0xFF, 0x7F, 0xD7, 0xE1, 0xF7, 0x07,
                /* 1488 */  0xDF, 0x75, 0x80, 0x6B, 0xA4, 0x55, 0x51, 0x11,
                /* 1490 */  0xBF, 0x05, 0x85, 0x80, 0x41, 0x8D, 0xCE, 0xD7,
                /* 1498 */  0x0A, 0xFC, 0xB1, 0x84, 0x81, 0xB3, 0xF3, 0x8A,
                /* 14A0 */  0xE1, 0xF8, 0xC0, 0x3D, 0xBE, 0xD7, 0x95, 0xD3,
                /* 14A8 */  0x7A, 0x36, 0xF0, 0x8D, 0xC5, 0x90, 0xEC, 0x82,
                /* 14B0 */  0x8A, 0xBB, 0x5F, 0xF8, 0x46, 0xED, 0xA9, 0xBE,
                /* 14B8 */  0x28, 0xBC, 0x27, 0xF8, 0x8E, 0xC0, 0xA0, 0x60,
                /* 14C0 */  0xDC, 0x51, 0x31, 0x07, 0x54, 0x38, 0x04, 0x67,
                /* 14C8 */  0x7C, 0x14, 0x98, 0x41, 0xFA, 0x90, 0xF2, 0x7A,
                /* 14D0 */  0xE0, 0xC1, 0x32, 0xF7, 0xC7, 0x0D, 0x5D, 0x22,
                /* 14D8 */  0x1E, 0x36, 0x9E, 0x0C, 0x9A, 0x43, 0xD1, 0x99,
                /* 14E0 */  0xE0, 0x14, 0xDA, 0x1A, 0x96, 0x70, 0xDE, 0x37,
                /* 14E8 */  0x42, 0x44, 0x09, 0xF6, 0xC2, 0xF1, 0xC6, 0xF0,
                /* 14F0 */  0x34, 0x1B, 0x25, 0x5E, 0xA4, 0x80, 0xD1, 0xA2,
                /* 14F8 */  0x04, 0xEB, 0x0D, 0x42, 0xA0, 0x91, 0x42, 0x04,
                /* 1500 */  0x0C, 0x51, 0x1C, 0x96, 0xE0, 0xA2, 0xB7, 0x7F,
                /* 1508 */  0x8D, 0x67, 0x6F, 0x02, 0x1D, 0x65, 0x1C, 0xE9,
                /* 1510 */  0xB8, 0x83, 0x1E, 0xB6, 0x6F, 0xAC, 0xFC, 0x7C,
                /* 1518 */  0xEF, 0x71, 0xF9, 0x02, 0x8A, 0x21, 0x78, 0xCD,
                /* 1520 */  0xF0, 0x17, 0xC0, 0x07, 0x00, 0xBC, 0x6B, 0x40,
                /* 1528 */  0xCD, 0xFC, 0xB1, 0x00, 0xD6, 0xFF, 0xFF, 0x46,
                /* 1530 */  0x0F, 0xBE, 0xEB, 0x35, 0x5E, 0xFE, 0x20, 0x50,
                /* 1538 */  0x97, 0x19, 0x7E, 0xF6, 0xF0, 0xCD, 0xD5, 0xF7,
                /* 1540 */  0x80, 0xC3, 0x62, 0xB7, 0x6E, 0x3E, 0x1E, 0xF0,
                /* 1548 */  0x0F, 0xFD, 0xA5, 0xD7, 0x87, 0x0A, 0xCF, 0xD7,
                /* 1550 */  0x57, 0x5F, 0xDF, 0xBE, 0xC1, 0x7B, 0x39, 0x06,
                /* 1558 */  0xEC, 0x09, 0xBE, 0x81, 0x83, 0x7C, 0xBC, 0xD8,
                /* 1560 */  0xFF, 0xFF, 0x78, 0xE1, 0x8C, 0x83, 0x2B, 0x27,
                /* 1568 */  0xA1, 0xC7, 0x02, 0x6B, 0x85, 0x41, 0xDD, 0xC2,
                /* 1570 */  0xC1, 0xA5, 0x09, 0x5C, 0x57, 0x65, 0x1F, 0x6A,
                /* 1578 */  0x7C, 0x08, 0xC6, 0x9F, 0x2F, 0x70, 0x01, 0x86,
                /* 1580 */  0x4C, 0x4F, 0x65, 0x30, 0xAE, 0x29, 0x3E, 0x95,
                /* 1588 */  0x61, 0xEE, 0x0E, 0x1E, 0x90, 0x8F, 0x18, 0xC0,
                /* 1590 */  0x67, 0x15, 0x1E, 0x18, 0xEE, 0xB4, 0xE0, 0x9B,
                /* 1598 */  0x92, 0x41, 0xCF, 0x31, 0xA8, 0x8F, 0x3C, 0x27,
                /* 15A0 */  0xEF, 0x7B, 0xC2, 0xE3, 0x84, 0xA3, 0x9E, 0x83,
                /* 15A8 */  0xE8, 0xD8, 0xC0, 0x71, 0xDC, 0x00, 0xC7, 0xE1,
                /* 15B0 */  0x06, 0x77, 0xCE, 0x63, 0xE3, 0xC2, 0xC0, 0x3D,
                /* 15B8 */  0x17, 0x78, 0x18, 0xBE, 0xE9, 0x78, 0x44, 0x98,
                /* 15C0 */  0xF1, 0x3F, 0xEA, 0x19, 0x21, 0x20, 0xFE, 0x62,
                /* 15C8 */  0xC4, 0x06, 0x0C, 0xA6, 0xFF, 0xFF, 0x80, 0xF9,
                /* 15D0 */  0xAD, 0xCD, 0xD7, 0x37, 0xDC, 0x80, 0x7D, 0x75,
                /* 15D8 */  0xF0, 0x05, 0xC3, 0x27, 0x30, 0xA3, 0xBF, 0xC0,
                /* 15E0 */  0x3C, 0x89, 0xF9, 0xD8, 0x40, 0x2E, 0x70, 0x74,
                /* 15E8 */  0xC0, 0xE0, 0x00, 0xF4, 0x80, 0xE1, 0x1F, 0x2E,
                /* 15F0 */  0xDE, 0xE5, 0xC0, 0x70, 0x15, 0xF4, 0x71, 0xC1,
                /* 15F8 */  0xC7, 0x1E, 0x2B, 0xBA, 0xCB, 0xA1, 0x6F, 0x72,
                /* 1600 */  0x86, 0x89, 0x63, 0x88, 0x37, 0x30, 0x76, 0x97,
                /* 1608 */  0x20, 0x87, 0x39, 0xA8, 0x77, 0x09, 0xCF, 0x81,
                /* 1610 */  0x9F, 0x2D, 0x7C, 0x82, 0xF3, 0xCD, 0x27, 0xC4,
                /* 1618 */  0xA9, 0x3E, 0x5A, 0xBD, 0x07, 0xF8, 0xE8, 0xF1,
                /* 1620 */  0xDE, 0xE5, 0xB3, 0x13, 0xBB, 0x08, 0xF8, 0xC8,
                /* 1628 */  0x65, 0x1C, 0x4F, 0xD3, 0x57, 0x40, 0x0F, 0xD9,
                /* 1630 */  0x60, 0xAF, 0x1A, 0x3E, 0x81, 0xF9, 0xE8, 0x86,
                /* 1638 */  0x3B, 0x46, 0x79, 0x26, 0x9E, 0xBE, 0xEF, 0x20,
                /* 1640 */  0xEC, 0x48, 0x72, 0xD4, 0xA1, 0xAE, 0xE9, 0x11,
                /* 1648 */  0xE5, 0x84, 0x0E, 0xC4, 0xB7, 0x36, 0x70, 0x46,
                /* 1650 */  0xBB, 0x7F, 0xA0, 0xB7, 0xE9, 0x91, 0x61, 0x8E,
                /* 1658 */  0x06, 0xB0, 0x2E, 0x21, 0x60, 0xF9, 0xFF, 0xDF,
                /* 1660 */  0x0C, 0xD8, 0x1D, 0xC3, 0x97, 0x10, 0xE0, 0x13,
                /* 1668 */  0xF4, 0x12, 0x81, 0xBE, 0x66, 0x78, 0x74, 0x8F,
                /* 1670 */  0x00, 0x98, 0x2B, 0x06, 0x3B, 0x16, 0xF8, 0xB0,
                /* 1678 */  0xE1, 0x6B, 0x00, 0xBB, 0x17, 0x38, 0xCC, 0x3D,
                /* 1680 */  0x02, 0x54, 0xA0, 0x1E, 0x1E, 0x7C, 0xB5, 0xF7,
                /* 1688 */  0x08, 0x50, 0x9C, 0x2C, 0x7D, 0x68, 0xF0, 0x40,
                /* 1690 */  0xAD, 0xEA, 0x8C, 0x09, 0xE5, 0x88, 0xC9, 0xA1,
                /* 1698 */  0xA2, 0xB1, 0x5B, 0x01, 0xBB, 0x5D, 0xFA, 0x26,
                /* 16A0 */  0x01, 0x37, 0xCF, 0x2C, 0x50, 0x49, 0x6E, 0x12,
                /* 16A8 */  0xD0, 0x61, 0xBA, 0xBC, 0xCC, 0xD0, 0xF9, 0x1F,
                /* 16B0 */  0xB8, 0x6F, 0x75, 0x1E, 0xA1, 0x0F, 0x11, 0x0C,
                /* 16B8 */  0xE5, 0x3D, 0xCF, 0xA7, 0x30, 0x7E, 0x86, 0xF0,
                /* 16C0 */  0x01, 0x93, 0x9D, 0x29, 0xF8, 0x59, 0x13, 0x77,
                /* 16C8 */  0x07, 0x30, 0xCA, 0x9B, 0xA7, 0x27, 0xC0, 0xCE,
                /* 16D0 */  0x9F, 0x46, 0x7E, 0x37, 0x78, 0x17, 0xF0, 0xF4,
                /* 16D8 */  0x7D, 0x2F, 0xE2, 0x87, 0x04, 0xF6, 0xFF, 0x3F,
                /* 16E0 */  0x51, 0x80, 0x29, 0xD8, 0x9D, 0x0E, 0x0A, 0xF4,
                /* 16E8 */  0x09, 0x79, 0x44, 0x46, 0xF5, 0x11, 0x81, 0x5F,
                /* 16F0 */  0x92, 0xC0, 0x78, 0x24, 0xF1, 0x81, 0x02, 0x08,
                /* 16F8 */  0xDD, 0x0B, 0x50, 0xA7, 0x0F, 0x7E, 0x78, 0xF6,
                /* 1700 */  0x05, 0xD5, 0x98, 0xEF, 0x56, 0x8F, 0x70, 0x9E,
                /* 1708 */  0x1C, 0xE6, 0x72, 0xC0, 0xE2, 0x5C, 0x93, 0x40,
                /* 1710 */  0x75, 0xDC, 0xE5, 0xA3, 0x83, 0x7B, 0x6D, 0xC5,
                /* 1718 */  0x0F, 0xEE, 0x9D, 0xE5, 0x9D, 0xCF, 0x50, 0x1E,
                /* 1720 */  0x24, 0xF8, 0xAE, 0xAD, 0xE0, 0xB8, 0xAA, 0xC1,
                /* 1728 */  0x38, 0xB6, 0xF0, 0x4B, 0x1E, 0xBC, 0xFF, 0xFF,
                /* 1730 */  0x25, 0x0F, 0xB0, 0x30, 0x2C, 0x2E, 0xF8, 0xEF,
                /* 1738 */  0x61, 0x20, 0x2A, 0x11, 0x06, 0x45, 0x60, 0x79,
                /* 1740 */  0xF7, 0x56, 0x0A, 0x7F, 0xC8, 0x60, 0xBC, 0x29,
                /* 1748 */  0xF0, 0x49, 0x63, 0x47, 0x0D, 0xD8, 0x19, 0x2A,
                /* 1750 */  0xEE, 0xA6, 0x08, 0xD6, 0xA9, 0x62, 0x86, 0xC0,
                /* 1758 */  0x83, 0x3D, 0x00, 0x7C, 0xBE, 0xF2, 0x19, 0x40,
                /* 1760 */  0x51, 0x60, 0xC8, 0xFF, 0x1F, 0x86, 0x1D, 0xDA,
                /* 1768 */  0xE1, 0xDC, 0x86, 0x01, 0x07, 0x23, 0xC6, 0x5D,
                /* 1770 */  0x0A, 0xE1, 0x4E, 0xF9, 0x1D, 0x25, 0xF6, 0x73,
                /* 1778 */  0x39, 0x9B, 0x2E, 0xEE, 0x6A, 0xEE, 0xD3, 0x09,
                /* 1780 */  0xBB, 0x20, 0xC3, 0x38, 0x0B, 0x3C, 0x02, 0xBC,
                /* 1788 */  0x9A, 0xF3, 0x0B, 0xF2, 0x0B, 0xF1, 0x0B, 0xC1,
                /* 1790 */  0x1B, 0xB2, 0x6F, 0x4A, 0xCF, 0x06, 0x2F, 0x3B,
                /* 1798 */  0x31, 0xDE, 0x8D, 0x7D, 0x4A, 0xF6, 0x79, 0xE7,
                /* 17A0 */  0x05, 0xD9, 0x18, 0x47, 0x13, 0x31, 0xCA, 0xB9,
                /* 17A8 */  0x3D, 0x0C, 0xBC, 0x26, 0x1B, 0xE5, 0xFD, 0xE4,
                /* 17B0 */  0x85, 0x20, 0x62, 0x34, 0x43, 0x04, 0x8D, 0x11,
                /* 17B8 */  0xE8, 0x7D, 0xD9, 0x78, 0x2F, 0xC8, 0x4C, 0xE0,
                /* 17C0 */  0x5B, 0x41, 0x07, 0x17, 0x5F, 0x90, 0x01, 0x43,
                /* 17C8 */  0xFF, 0xFF, 0x0B, 0x32, 0xB0, 0x3F, 0x19, 0x01,
                /* 17D0 */  0x3E, 0x4F, 0x1C, 0xB8, 0x4B, 0x35, 0xF8, 0x4E,
                /* 17D8 */  0x36, 0xC0, 0xFA, 0xFF, 0x7F, 0xB2, 0x01, 0xFB,
                /* 17E0 */  0xD0, 0x7D, 0xB2, 0x01, 0xF7, 0x68, 0xE1, 0x1D,
                /* 17E8 */  0x4D, 0x10, 0x27, 0x1B, 0x0A, 0xE4, 0xE0, 0xEB,
                /* 17F0 */  0xA2, 0x70, 0x3C, 0xF4, 0x49, 0x84, 0x1E, 0x9D,
                /* 17F8 */  0x7C, 0x94, 0xC4, 0x9D, 0x19, 0x3C, 0x91, 0x77,
                /* 1800 */  0x16, 0x8F, 0xE2, 0x65, 0xD0, 0xF7, 0x82, 0x13,
                /* 1808 */  0x79, 0x7D, 0xB0, 0x9C, 0x63, 0x24, 0xA8, 0x46,
                /* 1810 */  0xE2, 0xE3, 0x03, 0xFC, 0xEB, 0x8B, 0x8F, 0x91,
                /* 1818 */  0xF0, 0xF9, 0xFC, 0xC3, 0xF2, 0x60, 0x0C, 0xE9,
                /* 1820 */  0x53, 0x24, 0x07, 0x79, 0x76, 0x79, 0x0C, 0xE1,
                /* 1828 */  0x17, 0x48, 0xB8, 0xA7, 0x99, 0x03, 0xC0, 0xC8,
                /* 1830 */  0xBA, 0x3C, 0xA2, 0xCF, 0x8E, 0x1C, 0x23, 0xAE,
                /* 1838 */  0x2F, 0x8A, 0xBE, 0x02, 0xFB, 0x20, 0x70, 0x3E,
                /* 1840 */  0xCF, 0x89, 0xE0, 0xFA, 0xFF, 0x9F, 0x13, 0x31,
                /* 1848 */  0xA3, 0xE6, 0x47, 0x1B, 0x3E, 0x7E, 0x0E, 0xFE,
                /* 1850 */  0x56, 0xF0, 0x40, 0xE9, 0x63, 0x51, 0x88, 0x47,
                /* 1858 */  0x24, 0x7E, 0x4E, 0x04, 0x97, 0x89, 0x73, 0x22,
                /* 1860 */  0x90, 0x38, 0xF4, 0xC2, 0x38, 0x2D, 0xE0, 0x06,
                /* 1868 */  0xE2, 0x33, 0x25, 0x76, 0xCA, 0x27, 0xC2, 0xCE,
                /* 1870 */  0x25, 0x98, 0xD1, 0x81, 0xEB, 0x72, 0xEF, 0xD1,
                /* 1878 */  0x81, 0xFF, 0x24, 0x80, 0xC7, 0x7A, 0xBC, 0x03,
                /* 1880 */  0xDF, 0x49, 0xDD, 0x77, 0x13, 0x5F, 0x64, 0x7C,
                /* 1888 */  0x28, 0x7A, 0x6C, 0x01, 0x56, 0xFF, 0xFF, 0xF3,
                /* 1890 */  0x1D, 0x60, 0x2A, 0xDC, 0xE1, 0x0E, 0x15, 0xE7,
                /* 1898 */  0x7C, 0x07, 0x50, 0xE3, 0x6C, 0xFD, 0x7C, 0x07,
                /* 18A0 */  0xAE, 0xFF, 0xFF, 0xF9, 0x0E, 0x86, 0xC8, 0xF3,
                /* 18A8 */  0x1D, 0x40, 0xF6, 0xFF, 0xFF, 0x19, 0x00, 0x73,
                /* 18B0 */  0x46, 0xC3, 0x9D, 0xEF, 0xC0, 0x76, 0xB4, 0x01,
                /* 18B8 */  0xCC, 0x4D, 0xE3, 0xD1, 0x06, 0xDC, 0xC3, 0x85,
                /* 18C0 */  0x3D, 0x0C, 0x9E, 0xE1, 0x0D, 0xE5, 0x43, 0x01,
                /* 18C8 */  0x95, 0x74, 0xCA, 0xA6, 0x30, 0x66, 0xF1, 0x91,
                /* 18D0 */  0xC1, 0x07, 0x05, 0x7E, 0x64, 0xF0, 0x39, 0xE1,
                /* 18D8 */  0xF1, 0xE1, 0x50, 0xD9, 0x11, 0xC6, 0x97, 0x10,
                /* 18E0 */  0x1F, 0x15, 0x58, 0xF4, 0x71, 0xD2, 0x13, 0x14,
                /* 18E8 */  0x18, 0x87, 0xF8, 0xC8, 0xE7, 0x41, 0x3C, 0xD9,
                /* 18F0 */  0xC0, 0x3A, 0x17, 0xFC, 0xFF, 0x9F, 0x0B, 0x00,
                /* 18F8 */  0x33, 0x3A, 0x9F, 0x6F, 0x1A, 0xB9, 0x35, 0x82,
                /* 1900 */  0xC8, 0xC6, 0x51, 0x84, 0x72, 0x38, 0xC9, 0xE2,
                /* 1908 */  0x74, 0x11, 0xF4, 0x09, 0xC9, 0xD7, 0x8B, 0x53,
                /* 1910 */  0x39, 0x55, 0xFC, 0x55, 0xC4, 0xCA, 0x21, 0x05,
                /* 1918 */  0xEF, 0xE3, 0x8A, 0x35, 0xC3, 0x28, 0xDE, 0x6B,
                /* 1920 */  0x44, 0xA3, 0xF1, 0x08, 0x1C, 0x08, 0x46, 0x70,
                /* 1928 */  0x06, 0xF1, 0x49, 0xC4, 0xD9, 0x8E, 0x3A, 0x68,
                /* 1930 */  0x25, 0xE7, 0x3D, 0x32, 0x06, 0x76, 0xD0, 0xC1,
                /* 1938 */  0x04, 0xB9, 0x9E, 0xD0, 0x99, 0xFB, 0x72, 0xC0,
                /* 1940 */  0x35, 0x40, 0xE8, 0x00, 0x62, 0x70, 0x5F, 0x52,
                /* 1948 */  0x60, 0x5C, 0xA8, 0x7C, 0x49, 0xC1, 0x9C, 0x8D,
                /* 1950 */  0x3C, 0x1B, 0xAB, 0x01, 0x45, 0x0D, 0xC0, 0x68,
                /* 1958 */  0x98, 0x73, 0xC0, 0xC3, 0x09, 0xB8, 0x72, 0x5D,
                /* 1960 */  0xF8, 0xD0, 0x2F, 0x09, 0xDF, 0x2D, 0x1E, 0x6C,
                /* 1968 */  0xD8, 0xDC, 0xC0, 0xF5, 0xFF, 0x9F, 0x1B, 0xCC,
                /* 1970 */  0xF1, 0x7B, 0x6E, 0xB0, 0xD0, 0x3C, 0x37, 0xF8,
                /* 1978 */  0xF7, 0x3D, 0xEC, 0xE1, 0x10, 0x8F, 0xCC, 0xE6,
                /* 1980 */  0xF6, 0x1C, 0x10, 0xE1, 0x15, 0xC1, 0x97, 0x1C,
                /* 1988 */  0x8F, 0x0E, 0x38, 0x00, 0x7A, 0x74, 0xB0, 0x90,
                /* 1990 */  0x3C, 0x3A, 0xB0, 0x25, 0x1C, 0x1D, 0x5A, 0x0F,
                /* 1998 */  0x88, 0x5C, 0x9E, 0xB1, 0xC8, 0xC9, 0xE4, 0xF4,
                /* 19A0 */  0x4E, 0xE6, 0x99, 0xE0, 0xEC, 0x9E, 0x2E, 0x82,
                /* 19A8 */  0x04, 0x8A, 0x13, 0xFD, 0xD9, 0xC4, 0x13, 0x04,
                /* 19B0 */  0x0E, 0x03, 0xF0, 0x04, 0x61, 0xA1, 0x79, 0x82,
                /* 19B8 */  0x60, 0x8B, 0x78, 0xCD, 0x40, 0xDF, 0x3C, 0x61,
                /* 19C0 */  0x60, 0xFF, 0xFF, 0x5F, 0xE7, 0x98, 0xF7, 0xDB,
                /* 19C8 */  0x0D, 0xB9, 0x11, 0x00, 0x8F, 0x4B, 0xA1, 0x47,
                /* 19D0 */  0x08, 0x0B, 0xCD, 0x47, 0x0D, 0xB0, 0xC5, 0x1B,
                /* 19D8 */  0x21, 0x7A, 0x58, 0xBE, 0x95, 0x9C, 0xDF, 0xC9,
                /* 19E0 */  0x1D, 0x1F, 0xB0, 0x02, 0xF6, 0xF8, 0x60, 0xA1,
                /* 19E8 */  0x78, 0x7C, 0x60, 0xD3, 0x77, 0x37, 0x02, 0x05,
                /* 19F0 */  0x90, 0x4F, 0x42, 0x3E, 0x9F, 0xBC, 0x0C, 0xB1,
                /* 19F8 */  0x31, 0xBC, 0x4D, 0x19, 0xCD, 0xE8, 0x3C, 0xD3,
                /* 1A00 */  0x96, 0x74, 0xBE, 0xE1, 0x29, 0x60, 0x74, 0x76,
                /* 1A08 */  0x31, 0x88, 0x6F, 0x24, 0x56, 0x08, 0xA2, 0x63,
                /* 1A10 */  0x08, 0xFE, 0xBA, 0xEB, 0x19, 0xBD, 0x29, 0x78,
                /* 1A18 */  0xB6, 0x26, 0xA8, 0x07, 0x52, 0x27, 0x4F, 0x38,
                /* 1A20 */  0xB7, 0x0B, 0xF6, 0xFF, 0x3F, 0x48, 0xB1, 0xBB,
                /* 1A28 */  0xB5, 0xCF, 0xD8, 0xF0, 0x0F, 0x99, 0x1E, 0x8F,
                /* 1A30 */  0x6D, 0x1C, 0x8C, 0xE8, 0x09, 0xCB, 0x87, 0x6C,
                /* 1A38 */  0x7E, 0x98, 0x78, 0x52, 0x62, 0xE7, 0xC9, 0x04,
                /* 1A40 */  0x6F, 0x94, 0x09, 0x7A, 0x3B, 0x5F, 0xD3, 0x9B,
                /* 1A48 */  0xB6, 0x21, 0xA3, 0x32, 0x58, 0x43, 0x3C, 0xF3,
                /* 1A50 */  0x32, 0x7D, 0xEB, 0xD3, 0x71, 0x1B, 0xAE, 0x1E,
                /* 1A58 */  0x40, 0x8D, 0x85, 0x2B, 0x81, 0xD1, 0xA0, 0xC3,
                /* 1A60 */  0x3D, 0x5D, 0xBD, 0x5D, 0xF9, 0xB2, 0xE0, 0x0B,
                /* 1A68 */  0x83, 0x2F, 0x54, 0x3E, 0x7C, 0x1A, 0xEC, 0xBC,
                /* 1A70 */  0x22, 0xBC, 0x30, 0xF8, 0x36, 0xC5, 0x8E, 0xD7,
                /* 1A78 */  0x0C, 0x32, 0x54, 0x9C, 0xC0, 0x6F, 0xD7, 0x1C,
                /* 1A80 */  0x2C, 0xEC, 0x63, 0xC0, 0xE3, 0x86, 0xEF, 0x65,
                /* 1A88 */  0xEC, 0x26, 0x10, 0xEB, 0x31, 0xC9, 0x23, 0xE6,
                /* 1A90 */  0xF7, 0xA9, 0x03, 0x8A, 0xF4, 0xFC, 0xE3, 0x09,
                /* 1A98 */  0xF8, 0x92, 0xE5, 0xFB, 0xE3, 0x49, 0xF9, 0xAC,
                /* 1AA0 */  0x6A, 0xF4, 0x57, 0x09, 0x5F, 0xCA, 0x8C, 0xEC,
                /* 1AA8 */  0x13, 0x18, 0xBB, 0x49, 0xB2, 0x41, 0xF1, 0xAB,
                /* 1AB0 */  0xA9, 0x0F, 0x21, 0x9E, 0x0A, 0xBB, 0x3F, 0x61,
                /* 1AB8 */  0xC0, 0x8E, 0xC0, 0xA7, 0x43, 0x7E, 0x74, 0x09,
                /* 1AC0 */  0x14, 0xA5, 0x78, 0x4C, 0xDD, 0x1C, 0x3C, 0x43,
                /* 1AC8 */  0x83, 0x62, 0xE0, 0x0F, 0x92, 0xCD, 0x2E, 0xAE,
                /* 1AD0 */  0xB1, 0x7C, 0x2F, 0x31, 0x22, 0x76, 0x40, 0x0C,
                /* 1AD8 */  0xE5, 0x3D, 0xD2, 0xEA, 0x51, 0xC8, 0x1C, 0x3C,
                /* 1AE0 */  0x22, 0xCF, 0xC6, 0xD3, 0x61, 0xA7, 0x0E, 0xFC,
                /* 1AE8 */  0x24, 0x7C, 0x6A, 0xF2, 0xC1, 0xCE, 0x03, 0xF2,
                /* 1AF0 */  0x50, 0xF8, 0x14, 0x19, 0xB0, 0xFF, 0xFF, 0xC0,
                /* 1AF8 */  0x78, 0x98, 0x97, 0x00, 0x06, 0xED, 0xE1, 0x33,
                /* 1B00 */  0xF4, 0x17, 0x23, 0xA3, 0xF3, 0xF3, 0xCE, 0xE9,
                /* 1B08 */  0xF8, 0x1C, 0xEA, 0xA3, 0x86, 0xEF, 0x01, 0x98,
                /* 1B10 */  0x33, 0x99, 0x4F, 0x00, 0x3E, 0xB3, 0x31, 0xA0,
                /* 1B18 */  0x47, 0x7B, 0x06, 0xF2, 0xBE, 0xCA, 0x2E, 0x3F,
                /* 1B20 */  0x18, 0xA4, 0x77, 0x5D, 0x9F, 0x7E, 0x30, 0xF7,
                /* 1B28 */  0x33, 0x0E, 0x16, 0xE8, 0x58, 0xF9, 0x64, 0xE2,
                /* 1B30 */  0x79, 0xC2, 0x1E, 0x29, 0x9C, 0xDB, 0x26, 0x8C,
                /* 1B38 */  0x2B, 0x2F, 0xBF, 0x06, 0xF2, 0x5B, 0x39, 0xB8,
                /* 1B40 */  0xAE, 0x18, 0x3E, 0x99, 0x80, 0x19, 0x1E, 0x13,
                /* 1B48 */  0xE8, 0x3C, 0x43, 0x65, 0x8D, 0x0B, 0x75, 0xA4,
                /* 1B50 */  0xF1, 0x35, 0x95, 0x61, 0x3F, 0x0C, 0x78, 0xD2,
                /* 1B58 */  0x87, 0x79, 0x82, 0x2F, 0x6B, 0x18, 0x58, 0x5F,
                /* 1B60 */  0x4A, 0x38, 0xAC, 0xD1, 0xC2, 0xBE, 0x0E, 0x18,
                /* 1B68 */  0xF6, 0x11, 0x10, 0x77, 0xFD, 0x05, 0x0B, 0x20,
                /* 1B70 */  0xFE, 0x92, 0xF0, 0x60, 0xE0, 0x09, 0x18, 0x90,
                /* 1B78 */  0xC5, 0x59, 0x15, 0x15, 0xB1, 0x1C, 0x05, 0x80,
                /* 1B80 */  0x41, 0xFD, 0xFF, 0x47, 0xE7, 0xFB, 0x37, 0xE0,
                /* 1B88 */  0xE4, 0xB2, 0x8D, 0xBF, 0x47, 0xBC, 0x1E, 0x78,
                /* 1B90 */  0xB0, 0xEC, 0xB2, 0xFD, 0x20, 0xF3, 0x80, 0xF0,
                /* 1B98 */  0x1C, 0xF3, 0x0E, 0xF3, 0x50, 0xF0, 0x2E, 0x13,
                /* 1BA0 */  0x21, 0xC8, 0x53, 0xF6, 0x3B, 0x42, 0x84, 0x50,
                /* 1BA8 */  0x81, 0x5E, 0xB6, 0x8D, 0x17, 0xF4, 0x65, 0x22,
                /* 1BB0 */  0x4A, 0x9C, 0x28, 0x11, 0x42, 0x19, 0xE3, 0x5C,
                /* 1BB8 */  0x9E, 0x0E, 0x5E, 0x6A, 0xC2, 0x3D, 0x26, 0x04,
                /* 1BC0 */  0x7E, 0x72, 0x88, 0x12, 0xD8, 0x63, 0x7C, 0xD9,
                /* 1BC8 */  0x66, 0xE2, 0x2F, 0x32, 0xBA, 0x27, 0xF9, 0xB2,
                /* 1BD0 */  0x0D, 0x38, 0xFF, 0xFF, 0x5F, 0xB6, 0xC1, 0x75,
                /* 1BD8 */  0x71, 0x06, 0xF3, 0x8D, 0x16, 0x30, 0x77, 0x71,
                /* 1BE0 */  0x06, 0xFB, 0x70, 0x61, 0x0F, 0x83, 0x87, 0x79,
                /* 1BE8 */  0x4F, 0xF8, 0x50, 0x42, 0xE5, 0xC3, 0xA0, 0xCE,
                /* 1BF0 */  0x25, 0xC0, 0xF1, 0xFF, 0x7F, 0x2E, 0x01, 0x46,
                /* 1BF8 */  0x33, 0x7A, 0x03, 0x78, 0x15, 0x38, 0xED, 0x47,
                /* 1C00 */  0x91, 0x87, 0x92, 0x43, 0x88, 0xF1, 0x3E, 0x12,
                /* 1C08 */  0xC4, 0x08, 0x87, 0xFE, 0x5C, 0xE2, 0xEB, 0xC8,
                /* 1C10 */  0x93, 0x5B, 0x88, 0x28, 0xEF, 0x27, 0x4F, 0x28,
                /* 1C18 */  0x86, 0x88, 0x12, 0x2C, 0x46, 0xB0, 0xD0, 0x4F,
                /* 1C20 */  0x25, 0xC6, 0x60, 0x87, 0x94, 0x20, 0xE1, 0x9E,
                /* 1C28 */  0x4B, 0x98, 0xF4, 0xEF, 0x9D, 0xCE, 0xB9, 0x3E,
                /* 1C30 */  0x97, 0x00, 0xFC, 0x08, 0x77, 0xB7, 0x45, 0x9F,
                /* 1C38 */  0x1B, 0x7C, 0x4C, 0xF0, 0xF9, 0xC0, 0x10, 0x8D,
                /* 1C40 */  0x5F, 0x0C, 0xC8, 0xF5, 0xCD, 0x77, 0x04, 0x1F,
                /* 1C48 */  0x13, 0x5E, 0xE0, 0x18, 0x81, 0xFF, 0xFF, 0x01,
                /* 1C50 */  0x86, 0x4E, 0xCF, 0x9D, 0xE0, 0x18, 0x94, 0x87,
                /* 1C58 */  0x07, 0xFE, 0x03, 0x19, 0x3E, 0xFC, 0x75, 0x12,
                /* 1C60 */  0x75, 0x4C, 0xE0, 0xC3, 0x83, 0x77, 0xFA, 0x73,
                /* 1C68 */  0xC8, 0xA3, 0x18, 0x1D, 0x1C, 0x38, 0x9E, 0xEF,
                /* 1C70 */  0x1A, 0x1C, 0x08, 0x0E, 0x27, 0x0F, 0x1E, 0xD8,
                /* 1C78 */  0xC3, 0x19, 0x9B, 0x38, 0x1F, 0xC2, 0xD1, 0xF8,
                /* 1C80 */  0x08, 0x00, 0x8E, 0xB3, 0x03, 0xF8, 0xA2, 0x0E,
                /* 1C88 */  0x17, 0x7D, 0x38, 0xF0, 0x1D, 0x13, 0x06, 0xFA,
                /* 1C90 */  0x6B, 0x86, 0x6F, 0x6F, 0x46, 0xE7, 0x71, 0x06,
                /* 1C98 */  0x0C, 0xAA, 0xC1, 0x7A, 0xC0, 0xF0, 0xFF, 0xFF,
                /* 1CA0 */  0x67, 0x40, 0xFC, 0x0C, 0x5E, 0x2E, 0x9E, 0x2C,
                /* 1CA8 */  0xF8, 0x28, 0xC1, 0x77, 0xE2, 0xF3, 0x89, 0x02,
                /* 1CB0 */  0x37, 0x18, 0x9F, 0xEA, 0x31, 0x67, 0x09, 0xB0,
                /* 1CB8 */  0x5D, 0x57, 0x7D, 0x96, 0x00, 0x3E, 0xF2, 0x0E,
                /* 1CC0 */  0x58, 0xA0, 0x39, 0x20, 0xC1, 0x38, 0x59, 0x01,
                /* 1CC8 */  0x76, 0xC6, 0xF1, 0x64, 0x05, 0xE6, 0xFF, 0xFF,
                /* 1CD0 */  0xF0, 0x7C, 0x04, 0xC7, 0x8F, 0x81, 0x2B, 0xB4,
                /* 1CD8 */  0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A,
                /* 1CE0 */  0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C,
                /* 1CE8 */  0x09, 0x3B, 0x55, 0x29, 0xE0, 0xB3, 0x41, 0x03,
                /* 1CF0 */  0xB3, 0x3C, 0x0A, 0x81, 0x58, 0xCC, 0x9B, 0x42,
                /* 1CF8 */  0x20, 0x0E, 0x0B, 0x42, 0x23, 0x1D, 0x8E, 0x04,
                /* 1D00 */  0x62, 0xC9, 0x47, 0x2C, 0x81, 0x58, 0xAE, 0x07,
                /* 1D08 */  0x10, 0x16, 0xF0, 0x4D, 0x22, 0x70, 0xF2, 0x46,
                /* 1D10 */  0x12, 0x38, 0x79, 0x26, 0x08, 0xC4, 0x91, 0x41,
                /* 1D18 */  0xA8, 0x50, 0x1D, 0x20, 0x2C, 0x26, 0x08, 0x0D,
                /* 1D20 */  0xE5, 0x03, 0x84, 0x49, 0x7F, 0x1A, 0x08, 0x90,
                /* 1D28 */  0x18, 0x01, 0x61, 0xE1, 0x1E, 0x12, 0x02, 0xB1,
                /* 1D30 */  0xB4, 0xE7, 0x83, 0x40, 0x2C, 0xC4, 0x0A, 0x08,
                /* 1D38 */  0x8B, 0x0B, 0x42, 0xC3, 0x69, 0x01, 0x61, 0x92,
                /* 1D40 */  0xCC, 0x80, 0xB0, 0x40, 0x20, 0x54, 0xFE, 0x2B,
                /* 1D48 */  0x5D, 0x20, 0x16, 0xE9, 0x06, 0x90, 0x2E, 0x5D,
                /* 1D50 */  0x20, 0x0E, 0xA2, 0x07, 0x84, 0xC9, 0xF0, 0x03,
                /* 1D58 */  0xC2, 0x42, 0x83, 0xD0, 0x68, 0xEF, 0x09, 0x01,
                /* 1D60 */  0x12, 0x43, 0x20, 0x2C, 0xBE, 0x23, 0x10, 0x26,
                /* 1D68 */  0xFE, 0x69, 0x22, 0x10, 0xE7, 0xB7, 0x04, 0x71,
                /* 1D70 */  0x53, 0x1A, 0x62, 0x4D, 0x40, 0x4C, 0x83, 0x27,
                /* 1D78 */  0x20, 0xA6, 0x08, 0x44, 0x40, 0x8E, 0xFD, 0xD2,
                /* 1D80 */  0x10, 0x90, 0x35, 0x98, 0x02, 0x62, 0xD1, 0x41,
                /* 1D88 */  0x04, 0x64, 0x21, 0xAA, 0x80, 0x58, 0x5E, 0x57,
                /* 1D90 */  0x40, 0x2C, 0x3C, 0x88, 0x80, 0x9C, 0xF9, 0xCD,
                /* 1D98 */  0x2A, 0x20, 0x2B, 0x78, 0x74, 0x3D, 0x04, 0xB0,
                /* 1DA0 */  0xAF, 0xBC, 0x80, 0x9C, 0x1C, 0x44, 0x40, 0x0E,
                /* 1DA8 */  0xEC, 0x0B, 0x88, 0xC5, 0x07, 0x11, 0x90, 0xB3,
                /* 1DB0 */  0xFE, 0xC1, 0x05, 0xE4, 0xE0, 0x20, 0x1A, 0x04,
                /* 1DB8 */  0xF9, 0x68, 0x08, 0xC8, 0xE9, 0x41, 0x04, 0x44,
                /* 1DC0 */  0x7E, 0xE4, 0x02, 0xB1, 0xDA, 0x2F, 0xB9, 0x40,
                /* 1DC8 */  0xAC, 0xE7, 0x4F, 0xAE, 0xA1, 0x10, 0x10, 0xAA,
                /* 1DD0 */  0x5C, 0xDD, 0x49, 0x85, 0xFD, 0xFF, 0x73, 0x80,
                /* 1DD8 */  0xD0, 0x5C, 0x20, 0x02, 0xB3, 0x0A, 0x77, 0x40,
                /* 1DE0 */  0x4C, 0x15, 0x88, 0x80, 0x9C, 0x00, 0x88, 0xA6,
                /* 1DE8 */  0x02, 0xA1, 0x29, 0xC1, 0xA8, 0xAE, 0x37, 0x88,
                /* 1DF0 */  0x80, 0x9C, 0x00, 0x84, 0xA6, 0x02, 0xA1, 0x29,
                /* 1DF8 */  0x41, 0x04, 0x68, 0x55, 0xF6, 0x80, 0x98, 0x52,
                /* 1E00 */  0x10, 0xAA, 0x1C, 0x84, 0xA6, 0x03, 0xA1, 0xB2,
                /* 1E08 */  0xDF, 0xFD, 0x3A, 0x2C, 0x10, 0x10, 0x01, 0x39,
                /* 1E10 */  0x3A, 0x08, 0x15, 0xEE, 0x0F, 0x84, 0xE9, 0x7D,
                /* 1E18 */  0x66, 0x08, 0xD0, 0xE9, 0x40, 0x04, 0xE4, 0xC4,
                /* 1E20 */  0x20, 0x54, 0xC1, 0x0F, 0x23, 0x08, 0x11, 0x0B,
                /* 1E28 */  0x42, 0x15, 0xFC, 0x30, 0x82, 0x12, 0x2D, 0x2F,
                /* 1E30 */  0x0E, 0x01, 0x59, 0x1F, 0x08, 0xD5, 0x0B, 0x22,
                /* 1E38 */  0x30, 0x67, 0x03, 0xA2, 0x79, 0x41, 0x68, 0x7E,
                /* 1E40 */  0x30, 0xAA, 0xD5, 0x28, 0x10, 0xD3, 0x0F, 0x42,
                /* 1E48 */  0xF3, 0x80, 0x08, 0xCC, 0x0A, 0xDE, 0x1E, 0x07,
                /* 1E50 */  0xCC, 0x40, 0xA8, 0x4A, 0x10, 0x81, 0x39, 0x17,
                /* 1E58 */  0x10, 0xCD, 0x0A, 0x42, 0xB3, 0x83, 0x51, 0xED,
                /* 1E60 */  0x9F, 0x10, 0x0D, 0x80, 0x80, 0xD0, 0x7C, 0x20,
                /* 1E68 */  0x3A, 0x0C, 0x90, 0xE7, 0xA0, 0x80, 0xAC, 0x11,
                /* 1E70 */  0x84, 0x6A, 0x06, 0xD1, 0xF1, 0x80, 0x00, 0xD1,
                /* 1E78 */  0xFC, 0x20, 0x54, 0xCF, 0xC7, 0x24, 0x18, 0xC9,
                /* 1E80 */  0x00, 0x22, 0x20, 0x6B, 0xF9, 0xF2, 0x07, 0x22,
                /* 1E88 */  0xFA, 0x41, 0x04, 0xE4, 0x4C, 0x20, 0x34, 0x23,
                /* 1E90 */  0x18, 0x55, 0xFB, 0x2E, 0xD2, 0x71, 0x80, 0x80,
                /* 1E98 */  0xD0, 0x44, 0x20, 0x1A, 0x1E, 0x79, 0xED, 0x1C,
                /* 1EA0 */  0x1E, 0x03, 0xA1, 0x2A, 0x41, 0x04, 0x66, 0x8D,
                /* 1EA8 */  0x0F, 0x4C, 0x81, 0x38, 0x21, 0x08, 0x55, 0x6F,
                /* 1EB0 */  0xF7, 0xC0, 0x40, 0xF5, 0x82, 0xB0, 0xFF, 0xBF,
                /* 1EB8 */  0x5A, 0xC1, 0x83, 0xA0, 0x20, 0x34, 0x11, 0x88,
                /* 1EC0 */  0x0E, 0x19, 0xE4, 0xD5, 0x12, 0x88, 0xE8, 0x02,
                /* 1EC8 */  0xA1, 0x3A, 0x41, 0x34, 0x64, 0x02, 0x44, 0xB3,
                /* 1ED0 */  0x82, 0xD0, 0xEC, 0x60, 0x34, 0xFB, 0xF3, 0x45,
                /* 1ED8 */  0xC3, 0x20, 0x5F, 0x25, 0x1D, 0x18, 0xC8, 0xE3,
                /* 1EE0 */  0x31, 0x08, 0x51, 0xF4, 0x6D, 0x12, 0x88, 0x73,
                /* 1EE8 */  0x3F, 0x80, 0x34, 0x50, 0xF2, 0x29, 0x0A, 0x42,
                /* 1EF0 */  0xB4, 0x81, 0x08, 0xCC, 0x39, 0x80, 0x68, 0x36,
                /* 1EF8 */  0x10, 0x9A, 0x15, 0x8C, 0x66, 0x55, 0x7D, 0xC4,
                /* 1F00 */  0xA0, 0x4F, 0x9F, 0x43, 0x63, 0x2F, 0x3D, 0x81,
                /* 1F08 */  0x58, 0xC9, 0xCB, 0xE6, 0xD1, 0x82, 0xFD, 0xBC,
                /* 1F10 */  0x82, 0xB0, 0x4F, 0x59, 0x60, 0xF6, 0x32, 0xD2,
                /* 1F18 */  0x31, 0x80, 0x80, 0x50, 0x3D, 0xCF, 0x33, 0x1D,
                /* 1F20 */  0x01, 0x08, 0x88, 0x8E, 0x00, 0x04, 0x84, 0x66,
                /* 1F28 */  0x04, 0xA1, 0xD9, 0x41, 0xA8, 0xAE, 0xA7, 0xA3,
                /* 1F30 */  0x40, 0xAD, 0xED, 0xBF, 0x13, 0x84, 0x24, 0x03,
                /* 1F38 */  0xA1, 0xAA, 0x7F, 0xF3, 0x41, 0x88, 0xE2, 0xB7,
                /* 1F40 */  0xA3, 0x86, 0x49, 0x9E, 0x6A, 0x0F, 0x01, 0xEC,
                /* 1F48 */  0xA5, 0x28, 0x70, 0xEB, 0x06, 0xA1, 0x39, 0x40,
                /* 1F50 */  0x34, 0x50, 0x02, 0x44, 0xB5, 0xFC, 0x2E, 0x35,
                /* 1F58 */  0x50, 0x02, 0x22, 0x30, 0x67, 0x02, 0xA2, 0x39,
                /* 1F60 */  0x41, 0xA8, 0x0A, 0xFD, 0xC3, 0xA0, 0x20, 0x02,
                /* 1F68 */  0x72, 0x0A, 0x10, 0x9A, 0x0A, 0x8C, 0xEA, 0xF0,
                /* 1F70 */  0x3F, 0x00, 0x0A, 0x42, 0xB5, 0x82, 0xE8, 0x70,
                /* 1F78 */  0x41, 0x12, 0x80, 0xB0, 0xA4, 0x20, 0x34, 0x45,
                /* 1F80 */  0x83, 0x83, 0x09, 0x8D, 0x00, 0x48, 0x2B, 0x1C,
                /* 1F88 */  0x6E, 0x68, 0x08, 0x70, 0x16, 0x0A, 0x84, 0x06,
                /* 1F90 */  0x05, 0xD1, 0xB1, 0xC5, 0xA9, 0x41, 0x04, 0x68,
                /* 1F98 */  0x81, 0x25, 0x0E, 0x20, 0x14, 0x84, 0xFE, 0xFF,
                /* 1FA0 */  0x03, 0x80, 0x08, 0xD0, 0x69, 0x40, 0x74, 0x44,
                /* 1FA8 */  0x20, 0x60, 0x54, 0x47, 0x8A, 0x21, 0x51, 0x10,
                /* 1FB0 */  0x01, 0x5A, 0x28, 0x88, 0x8E, 0x3E, 0xA4, 0x05,
                /* 1FB8 */  0x18, 0x13, 0x05, 0x42, 0xC5, 0x83, 0x50, 0xAD,
                /* 1FC0 */  0x31, 0x40, 0x99, 0x72, 0x10, 0x81, 0x3A, 0x39,
                /* 1FC8 */  0x88, 0x8E, 0x04, 0xA4, 0xC6, 0xA1, 0x82, 0x82,
                /* 1FD0 */  0x50, 0xD5, 0x20, 0x54, 0x4E, 0x0E, 0x10, 0x26,
                /* 1FD8 */  0x0D, 0x84, 0xCA, 0x05, 0xD1, 0x00, 0xAC, 0x1D,
                /* 1FE0 */  0x44, 0xC7, 0x26, 0x02, 0x46, 0xE3, 0x83, 0x50,
                /* 1FE8 */  0x49, 0x3D, 0x00, 0x99, 0x3E, 0x10, 0x01, 0x3A,
                /* 1FF0 */  0x3D, 0x88, 0x0E, 0x03, 0x24, 0xC8, 0x41, 0x84,
                /* 1FF8 */  0x82, 0x50, 0x89, 0x45, 0x40, 0x99, 0x60, 0x10,
                /* 2000 */  0x1D, 0x7F, 0x08, 0x88, 0xC0, 0x2C, 0x23, 0x09,
                /* 2008 */  0x08, 0x13, 0x07, 0x42, 0xC5, 0x82, 0x50, 0x21,
                /* 2010 */  0x51, 0x40, 0x59, 0x0C, 0x10, 0x1A, 0x24, 0x0B,
                /* 2018 */  0x18, 0x0B, 0x07, 0x42, 0xC3, 0x82, 0xE8, 0x78,
                /* 2020 */  0x45, 0xBA, 0x00, 0x31, 0xC9, 0x20, 0x34, 0x02,
                /* 2028 */  0x08, 0x0D, 0x0B, 0x22, 0x40, 0x12, 0x06, 0x90,
                /* 2030 */  0x82, 0xD0, 0x08, 0x20, 0x34, 0x2B, 0x08, 0xD5,
                /* 2038 */  0x5E, 0x06, 0x94, 0x25, 0x06, 0xD1, 0x91, 0x81,
                /* 2040 */  0xA4, 0x39, 0x9C, 0x50, 0x10, 0x81, 0x39, 0x0D,
                /* 2048 */  0x10, 0x4D, 0x08, 0x42, 0x13, 0x83, 0x50, 0x79,
                /* 2050 */  0x6D, 0x40, 0x58, 0x7A, 0x10, 0x1D, 0x1F, 0xC8,
                /* 2058 */  0x83, 0x51, 0xC7, 0x07, 0x02, 0x42, 0x53, 0x81,
                /* 2060 */  0xE8, 0xC0, 0x43, 0xEA, 0x1C, 0x78, 0x28, 0x08,
                /* 2068 */  0x55, 0x0F, 0xA2, 0xC3, 0x03, 0x29, 0x04, 0xC2,
                /* 2070 */  0x74, 0x26, 0x3A, 0xD6, 0xD0, 0x46, 0x07, 0x03,
                /* 2078 */  0xFA, 0x08, 0x16, 0xA8, 0xFF, 0xFF, 0x6A, 0x2A,
                /* 2080 */  0x81, 0x30, 0x75, 0x20, 0x54, 0x3F, 0x08, 0xCD,
                /* 2088 */  0x0A, 0x22, 0x50, 0xEB, 0xCB, 0x74, 0x10, 0xA0,
                /* 2090 */  0x20, 0x34, 0x03, 0x88, 0x06, 0x40, 0x80, 0xA8,
                /* 2098 */  0x9A, 0x4E, 0x03, 0xA0, 0x20, 0x3A, 0xA4, 0x90,
                /* 20A0 */  0x54, 0xC7, 0x12, 0xDA, 0x0A, 0x84, 0xA5, 0x05,
                /* 20A8 */  0xA1, 0xC2, 0x7A, 0x81, 0x32, 0x91, 0x20, 0x54,
                /* 20B0 */  0x38, 0x88, 0x8E, 0x06, 0x4E, 0x01, 0xA2, 0xA3,
                /* 20B8 */  0x0A, 0x01, 0xA3, 0xD9, 0x41, 0xA8, 0x9E, 0x60,
                /* 20C0 */  0x80, 0x4C, 0x1C, 0x88, 0x00, 0x9D, 0x04, 0x44,
                /* 20C8 */  0x83, 0x25, 0x20, 0x34, 0x29, 0x20, 0x8D, 0x0D,
                /* 20D0 */  0x48, 0xA5, 0x16, 0x3B, 0x46, 0x51, 0x10, 0x1A,
                /* 20D8 */  0x05, 0x44, 0x80, 0xCE, 0x05, 0xA2, 0xC3, 0x1C,
                /* 20E0 */  0x49, 0x76, 0xCA, 0xA4, 0x20, 0x54, 0x2C, 0x88,
                /* 20E8 */  0x0E, 0x17, 0x04, 0x44, 0x80, 0x8E, 0x0A, 0x46,
                /* 20F0 */  0x63, 0x83, 0x50, 0x29, 0xCD, 0x00, 0x99, 0x2E,
                /* 20F8 */  0x10, 0x01, 0x3A, 0x35, 0x88, 0xC0, 0xAC, 0x21,
                /* 2100 */  0xDA, 0x21, 0x81, 0x82, 0xD0, 0x68, 0xD9, 0x40,
                /* 2108 */  0x59, 0x50, 0x10, 0x1D, 0xED, 0x48, 0x37, 0x30,
                /* 2110 */  0x26, 0x1F, 0x84, 0x86, 0x02, 0xA1, 0x21, 0x41,
                /* 2118 */  0x68, 0x80, 0x72, 0x87, 0x38, 0x0A, 0x42, 0xE5,
                /* 2120 */  0xD4, 0x03, 0x61, 0x61, 0x40, 0xA8, 0xD0, 0x7C,
                /* 2128 */  0x47, 0x3B, 0xDA, 0x0F, 0x90, 0x06, 0x04, 0x61,
                /* 2130 */  0xF1, 0x40, 0xE8, 0xFF, 0x1F                   
            })
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PEG0)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0A)
                }

                Return (PR0A)
            }

            Device (PEGP)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (DGFX, PCI_Config, Zero, 0xF0)
                Field (DGFX, DWordAcc, Lock, Preserve)
                {
                    Offset (0x0B), 
                    LNKV,   8
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }
        }

        Device (IGPU)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (PCPC, 0, NotSerialized)
            {
                ECST (0x6F)
            }

            Method (PAPR, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)
                If (LEqual (And (Arg0, 0x03), Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (CondRefOf (IDAB))
                {
                    Store (Zero, NDID)
                    IDAB ()
                }
                Else
                {
                    Store (Zero, NDID)
                    If (LNotEqual (DIDL, Zero))
                    {
                        Store (SDDL (DIDL), DID1)
                    }

                    If (LNotEqual (DDL2, Zero))
                    {
                        Store (SDDL (DDL2), DID2)
                    }

                    If (LNotEqual (DDL3, Zero))
                    {
                        Store (SDDL (DDL3), DID3)
                    }

                    If (LNotEqual (DDL4, Zero))
                    {
                        Store (SDDL (DDL4), DID4)
                    }

                    If (LNotEqual (DDL5, Zero))
                    {
                        Store (SDDL (DDL5), DID5)
                    }

                    If (LNotEqual (DDL6, Zero))
                    {
                        Store (SDDL (DDL6), DID6)
                    }

                    If (LNotEqual (DDL7, Zero))
                    {
                        Store (SDDL (DDL7), DID7)
                    }

                    If (LNotEqual (DDL8, Zero))
                    {
                        Store (SDDL (DDL8), DID8)
                    }
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    Return (TMP4)
                }

                If (LEqual (NDID, 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    Return (TMP5)
                }

                If (LEqual (NDID, 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP6, One))
                    Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                    Return (TMP6)
                }

                If (LEqual (NDID, 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP7, One))
                    Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                    Return (TMP7)
                }

                If (LEqual (NDID, 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP8, One))
                    Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                    Return (TMP8)
                }

                If (LEqual (NDID, 0x09))
                {
                    If (CondRefOf (HWID))
                    {
                        Return (HWID)
                    }
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD1)
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (LIDS, Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD2)
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }

                Name (OSBR, Package (0x0D)
                {
                    0x64, 
                    0x32, 
                    Zero, 
                    0x0A, 
                    0x14, 
                    0x1E, 
                    0x28, 
                    0x32, 
                    0x3C, 
                    0x46, 
                    0x50, 
                    0x5A, 
                    0x64
                })
                Name (W8BR, Package (0x67)
                {
                    0x64, 
                    0x32, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x64, 
                    0x64, 
                    0x64, 
                    0x64, 
                    0x64, 
                    0x64, 
                    0x64, 
                    0x64, 
                    0x64, 
                    0x64
                })
                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    If (LEqual (OSYS, 0x07DC))
                    {
                        Return (W8BR)
                    }
                    Else
                    {
                        Return (OSBR)
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    If (LEqual (OSKU, Zero))
                    {
                        TRAP (TRTI, One)
                        Stall (0xFF)
                        Stall (0xFF)
                        Return (BRTL)
                    }
                    Else
                    {
                        Return (IGBQ ())
                    }
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (LEqual (OSKU, Zero))
                    {
                        Store (Arg0, BRTL)
                        TRAP (TRTI, 0x02)
                        Stall (0xFF)
                        Stall (0xFF)
                        AINT (One, BRIV)
                    }
                    Else
                    {
                        IGBC (Arg0)
                    }
                }

                Method (IGBQ, 0, NotSerialized)
                {
                    And (CBLV, 0xFF, Local0)
                    Return (Local0)
                }

                Method (IGBC, 1, NotSerialized)
                {
                    AINT (One, Arg0)
                    Store (Arg0, BRTL)
                    Divide (Arg0, 0x0A, , Local0)
                    SBTC (Local0)
                }

                Method (SBTC, 1, NotSerialized)
                {
                    If (LEqual (^^^LPCB.EC0.ECOK, One))
                    {
                        If (^^^LPCB.EC0.SW2S)
                        {
                            CMSW (0x43, Arg0)
                        }
                        Else
                        {
                            CMSW (0x44, Arg0)
                        }
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD3)
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD4)
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD5)
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD6)
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD7)
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                SROT,   32, 
                IUER,   32, 
                FDSP,   64, 
                FDSS,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0679, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15
                            ), PARM, PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        Store (KSV0, PARM)
                        Store (KSV1, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        Store (0x000F87FD, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        If (And (PARM, 0x0001E000))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (IGPU, Arg1)
                    }
                }

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (IGPU, 0x80)
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID)
                }
                Else
                {
                    Store (Arg0, CLID)
                }

                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, Serialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    Store (One, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    Store (0x06, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    Store (0x08, PFIT)
                                }
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        If (LEqual (OSKU, Zero))
                        {
                            Store (Arg1, BCLP)
                        }
                        Else
                        {
                            Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                        }

                        Or (BCLP, 0x80000000, BCLP)
                        Store (0x02, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, ALSI)
                            Store (One, ASLC)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Device (^^MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS1, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                })
                Name (CRS2, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40004000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (IGDS)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (LOr (LEqual (And (PNHM, 0x0FFF0FF0), 0x000206A0), LEqual (And (PNHM, 0x0FFF0FFF
                        ), 0x000306A0)))
                    {
                        Return (CRS1)
                    }

                    Return (CRS2)
                }
            }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "AAPL,ig-platform-id", Buffer() { 0x03, 0x00, 0x66, 0x01 },
                    "hda-gfx", Buffer() { "onboard-1" },
                })
            }

            
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8, 
        CMSD,   8
    }

    IndexField (CMSI, CMSD, ByteAcc, NoLock, Preserve)
    {
        Offset (0x02), 
        HSDC,   8, 
        HSDS,   8, 
        HBUC,   8, 
        HBUS,   8, 
        Offset (0x40), 
        WLDS,   1, 
        BTDS,   1, 
        CCDS,   1, 
        WMDS,   1, 
        BNLS,   1, 
        WWLS,   1, 
        WBTS,   1, 
        Offset (0x49), 
        FMOD,   1, 
        HTS4,   1
    }

    Method (CMSW, 2, NotSerialized)
    {
        Store (Arg0, CMSI)
        Store (Arg1, CMSD)
    }

    Method (CMSR, 1, NotSerialized)
    {
        Store (Arg0, CMSI)
        Return (CMSD)
    }

    Mutex(MUTX, 0)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)), P80D)
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (Or (And (P80D, Zero), Arg1), P80D)
        }

        If (LEqual (Arg2, Zero)) {}
        If (LEqual (Arg2, One))
        {
            Store (P80D, P80H)
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8, 
        SSMD,   8
    }

    Method (TSMI, 2, NotSerialized)
    {
        Store (Arg1, SSMD)
        Store (Arg0, SSMP)
        Stall (0xFF)
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0, Zero)
        Store (Arg0, SLPS)
        If (LOr (LGreaterEqual (Arg0, 0x03), LLessEqual (Arg0, 0x05)))
        {
            S34E (Arg0)
        }

        If (LEqual (Arg0, 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            If (LLess (OSYS, 0x07DC))
            {
                Store (WLOF, SAV0)
                Store (BTOF, SAV1)
                Store (Zero, WLOF)
                Store (Zero, BTOF)
            }

            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
            CMSW (Zero, 0x03)
        }

        If (LEqual (Arg0, 0x05))
        {
            P8XH (0x04, 0x55, Zero)
            P8XH (0x04, 0x55, One)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        If (LOr(LLess(Arg0,1),LGreater(Arg0,5))) { Store(3,Arg0) }
Store (0xC4, SSMP)
        Store (Zero, P80D)
        CMSW (Zero, Zero)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LEqual (Arg0, 0x03))
        {
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
            Store (0x70, SSMP)
            If (LLess (OSYS, 0x07DC))
            {
                Store (SAV0, WLOF)
                Store (SAV1, BTOF)
            }

            Store (Zero, \_SB.PCI0.LPCB.EC0.RTCE)
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }

            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }

            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If (LEqual (RP2D, Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If (LEqual (RP3D, Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            \_SB.PCI0.XHC.XWAK ()
            \_PR.CPU0.CTLD ()
        }

        If (LEqual (Arg0, 0x04))
        {
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
        }

        If (LEqual (Arg0, 0x05))
        {
            P8XH (0x04, 0xE5, Zero)
            P8XH (0x04, 0xE5, One)
        }

        S34W (Arg0)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (S34E, 1, NotSerialized)
    {
        If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
        {
            Store (KBWK, \_SB.PCI0.LPCB.EC0.PSKB)
            Store (TPWK, \_SB.PCI0.LPCB.EC0.PSTP)
            Store (LANP, \_SB.PCI0.LPCB.EC0.PWOL)
            If (LAnd (LEqual (Arg0, 0x03), LEqual (And (AOAC, One), One)))
            {
                Store (\_SB.IAOE.AOEN, \_SB.PCI0.LPCB.EC0.BAAE)
                If (And (\_SB.IAOE.WLPE, 0x02))
                {
                    Store (One, \_SB.PCI0.LPCB.EC0.WLPW)
                }
                Else
                {
                    Store (Zero, \_SB.PCI0.LPCB.EC0.WLPW)
                }
            }

            If (LEqual (Arg0, 0x04))
            {
                Store (Zero, \_TZ.HOTF)
            }
        }
    }

    Method (S34W, 1, NotSerialized)
    {
        If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
        {
            Store (\_SB.PCI0.LPCB.EC0.GWKR, Local0)
            If (LNot (LOr (And (Local0, 0x02), And (Local0, 0x08))))
            {
                Store (Zero, \_SB.PCI0.LPCB.EC0.BAAE)
            }

            If (LEqual (\_SB.PCI0.LPCB.EC0.BACR, One))
            {
                Notify (\_SB.BAT0, 0x80)
            }
            Else
            {
                Store (0x32, \_SB.PCI0.LPCB.EC0.DLY2)
            }

            Store (FNKY, \_SB.PCI0.LPCB.EC0.ACKY)
            If (LEqual (And (CMSR (0x49), One), One))
            {
                Notify (\_SB.PWRB, 0x02)
            }
            Else
            {
                If (LEqual (And (CMSR (0x4A), 0x06), Zero))
                {
                    Notify (\_SB.PWRB, 0x02)
                }

                If (LEqual (And (CMSR (0x4A), 0x08), 0x08))
                {
                    Notify (\_SB.PWRB, 0x02)
                    Store (CMSR (0x4A), Local0)
                    And (Local0, 0xF7, Local0)
                    CMSW (0x4A, Local0)
                }
            }

            \_SB.PCI0.ACEL.INIT ()
            \_SB.PCI0.LPCB.EC0.OSTD ()
        }
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        
        // nothing

    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            CMSW (Zero, Zero)
            Store (0x07D0, OSYS)
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }

                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x07D3, OSYS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }

                If (_OSI ("NOT_WINP_KEY"))
                {
                    Store (0x03E9, SSOS)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }

                If(LOr(_OSI("Darwin"),_OSI("Windows 2012")))
                {
                    Store (0x07DC, OSYS)
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
    }

    Scope (_TZ)
    {
        Name (TPTM, 0x4B)
        Name (T085, Buffer (0x03)
        {
             0x55, 0x5A, 0x46                               
        })
        Name (T090, Buffer (0x03)
        {
             0x59, 0x5F, 0x4B                               
        })
        Name (T100, Buffer (0x03)
        {
             0x63, 0x69, 0x50                               
        })
        Name (T105, Buffer (0x03)
        {
             0x68, 0x69, 0x52                               
        })
        Name (EDTM, One)
        Name (S4TP, 0x64)
        Name (HOTF, Zero)
        ThermalZone (TZ01)
        {
            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LGreaterEqual (OSYS, 0x07D6))
                {
                    While (One)
                    {
                        Store (TJMX, _T_0)
                        If (LEqual (_T_0, 0x55))
                        {
                            Store (DerefOf (Index (T085, One)), S4TP)
                            Return (Add (0x0AAC, Multiply (DerefOf (Index (T085, One)), 0x0A)))
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x5A))
                            {
                                Store (DerefOf (Index (T090, One)), S4TP)
                                Return (Add (0x0AAC, Multiply (DerefOf (Index (T090, One)), 0x0A)))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x64))
                                {
                                    Store (DerefOf (Index (T100, One)), S4TP)
                                    Return (Add (0x0AAC, Multiply (DerefOf (Index (T100, One)), 0x0A)))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x69))
                                    {
                                        Store (DerefOf (Index (T105, One)), S4TP)
                                        Return (Add (0x0AAC, Multiply (DerefOf (Index (T105, One)), 0x0A)))
                                    }
                                    Else
                                    {
                                        Store (DerefOf (Index (T100, One)), S4TP)
                                        Return (Add (0x0AAC, Multiply (DerefOf (Index (T100, One)), 0x0A)))
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Return (Zero)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LLess (OSYS, 0x07D6))
                {
                    While (One)
                    {
                        Store (TJMX, _T_0)
                        If (LEqual (_T_0, 0x55))
                        {
                            Store (DerefOf (Index (T085, One)), S4TP)
                            Return (Add (0x0AAC, Multiply (DerefOf (Index (T085, One)), 0x0A)))
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x5A))
                            {
                                Store (DerefOf (Index (T090, One)), S4TP)
                                Return (Add (0x0AAC, Multiply (DerefOf (Index (T090, One)), 0x0A)))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x64))
                                {
                                    Store (DerefOf (Index (T100, One)), S4TP)
                                    Return (Add (0x0AAC, Multiply (DerefOf (Index (T100, One)), 0x0A)))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x69))
                                    {
                                        Store (DerefOf (Index (T105, One)), S4TP)
                                        Return (Add (0x0AAC, Multiply (DerefOf (Index (T105, One)), 0x0A)))
                                    }
                                    Else
                                    {
                                        Store (DerefOf (Index (T100, One)), S4TP)
                                        Return (Add (0x0AAC, Multiply (DerefOf (Index (T100, One)), 0x0A)))
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Return (Zero)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LAnd (LEqual (HOTF, One), LEqual (OSYS, 0x07DC)))
                {
                    Subtract (S4TP, 0x0A, Local0)
                    If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                    {
                        If (LLessEqual (\_SB.PCI0.LPCB.EC0.RTMP, Local0))
                        {
                            Store (Zero, HOTF)
                        }
                    }

                    Return (Add (0x0AAC, Multiply (TPTM, 0x0A)))
                }

                If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                {
                    Store (\_SB.PCI0.LPCB.EC0.RTMP, Local0)
                    If (LGreaterEqual (Local0, S4TP))
                    {
                        Store (One, HOTF)
                        Store (One, HTS4)
                    }

                    If (LAnd (LNotEqual (TJMX, 0x55), LNotEqual (TJMX, 0x5A)))
                    {
                        CTMT (Local0)
                    }

                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }
                Else
                {
                    Return (Add (0x0AAC, Multiply (TPTM, 0x0A)))
                }
            }

            Method (_PSL, 0, NotSerialized)  // _PSL: Passive List
            {
                If (LEqual (TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If (LEqual (TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                If (LGreater (OSYS, 0x07D6))
                {
                    Store (Arg0, CTYP)
                    If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                    {
                        Store (Arg0, \_SB.PCI0.LPCB.EC0.TRPM)
                    }
                }
                Else
                {
                    Store (Zero, CTYP)
                    If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                    {
                        Store (Zero, \_SB.PCI0.LPCB.EC0.TRPM)
                    }
                }
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (CTYP)
                {
                    And (PPMF, One, Local0)
                    If (Local0)
                    {
                        While (One)
                        {
                            Store (TJMX, _T_0)
                            If (LEqual (_T_0, 0x55))
                            {
                                Return (Add (0x0AAC, Multiply (DerefOf (Index (T085, 0x02)), 0x0A)))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x5A))
                                {
                                    Return (Add (0x0AAC, Multiply (DerefOf (Index (T090, 0x02)), 0x0A)))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x64))
                                    {
                                        Store (Subtract (DerefOf (Index (T100, 0x02)), PSVD), Local1)
                                        If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                                        {
                                            Store (Local1, \_SB.PCI0.LPCB.EC0.SPSV)
                                        }

                                        Return (Add (0x0AAC, Multiply (Subtract (DerefOf (Index (T100, 0x02)), PSVD), 
                                            0x0A)))
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x69))
                                        {
                                            Store (Subtract (DerefOf (Index (T105, 0x02)), PSVD), Local1)
                                            If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                                            {
                                                Store (Local1, \_SB.PCI0.LPCB.EC0.SPSV)
                                            }

                                            Return (Add (0x0AAC, Multiply (Subtract (DerefOf (Index (T105, 0x02)), PSVD), 
                                                0x0A)))
                                        }
                                        Else
                                        {
                                            Store (Subtract (DerefOf (Index (T100, 0x02)), PSVD), Local1)
                                            If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                                            {
                                                Store (Local1, \_SB.PCI0.LPCB.EC0.SPSV)
                                            }

                                            Return (Add (0x0AAC, Multiply (Subtract (DerefOf (Index (T100, 0x02)), PSVD), 
                                                0x0A)))
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }
                }
                Else
                {
                    And (PPMF, One, Local0)
                    If (Local0)
                    {
                        While (One)
                        {
                            Store (TJMX, _T_1)
                            If (LEqual (_T_1, 0x55))
                            {
                                Return (Add (0x0AAC, Multiply (DerefOf (Index (T085, Zero)), 0x0A)))
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x5A))
                                {
                                    Return (Add (0x0AAC, Multiply (DerefOf (Index (T090, Zero)), 0x0A)))
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x64))
                                    {
                                        Store (Subtract (DerefOf (Index (T100, Zero)), PSVD), Local1)
                                        If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                                        {
                                            Store (Local1, \_SB.PCI0.LPCB.EC0.SPSV)
                                        }

                                        Return (Add (0x0AAC, Multiply (Subtract (DerefOf (Index (T100, Zero)), PSVD), 
                                            0x0A)))
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x69))
                                        {
                                            Store (Subtract (DerefOf (Index (T105, Zero)), PSVD), Local1)
                                            If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                                            {
                                                Store (Local1, \_SB.PCI0.LPCB.EC0.SPSV)
                                            }

                                            Return (Add (0x0AAC, Multiply (Subtract (DerefOf (Index (T105, Zero)), PSVD), 
                                                0x0A)))
                                        }
                                        Else
                                        {
                                            Store (Subtract (DerefOf (Index (T100, Zero)), PSVD), Local1)
                                            If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                                            {
                                                Store (Local1, \_SB.PCI0.LPCB.EC0.SPSV)
                                            }

                                            Return (Add (0x0AAC, Multiply (Subtract (DerefOf (Index (T100, Zero)), PSVD), 
                                                0x0A)))
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }
                }
                Return (Zero)
            }

            Name (_TC1, 0x02)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x05)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (REGN, "Processor Thermal Zone")
            Name (FMAX, 0x1388)
            Name (FMIN, Zero)
            Method (FRSP, 0, NotSerialized)
            {
                Store (Zero, Local2)
                If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                {
                    Store (\_SB.PCI0.LPCB.EC0.RPM1, Local0)
                    Store (\_SB.PCI0.LPCB.EC0.RPM2, Local1)
                    ShiftLeft (Local1, 0x08, Local1)
                    Or (Local0, Local1, Local0)
                    If (LNotEqual (Local0, Zero))
                    {
                        Divide (0x00075300, Local0, Local0, Local2)
                    }
                }

                Return (Local2)
            }

            Method (FSSP, 1, NotSerialized)
            {
                If (LEqual (\_SB.PCI0.LPCB.EC0.ECOK, One))
                {
                    If (LNotEqual (Arg0, Zero))
                    {
                        Store (Zero, \_SB.PCI0.LPCB.EC0.SFAN)
                    }
                    Else
                    {
                        Store (0x02, \_SB.PCI0.LPCB.EC0.SFAN)
                    }
                }
            }

            Method (CTMT, 1, NotSerialized)
            {
                If (LGreaterEqual (Arg0, \_SB.PCI0.LPCB.EC0.DTMT))
                {
                    If (LEqual (\_SB.PCI0.LPCB.EC0.TMDE, One))
                    {
                        Store (Zero, EDTM)
                        Store (One, \_SB.PCI0.LPCB.EC0.ECTB)
                        Store (Zero, \_SB.PCI0.LPCB.EC0.TMDE)
                    }
                }

                If (LLessEqual (Arg0, \_SB.PCI0.LPCB.EC0.ETMT))
                {
                    If (LEqual (\_SB.PCI0.LPCB.EC0.TMEE, One))
                    {
                        Store (One, EDTM)
                        Store (Zero, \_SB.PCI0.LPCB.EC0.ECTB)
                        Store (Zero, \_SB.PCI0.LPCB.EC0.TMEE)
                    }
                }

                \_SB.PCI0.LPCB.EC0.TBMC (EDTM)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y16)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (RP1D, Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            If (LEqual (RP2D, Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02)
            }

            If (LEqual (RP3D, Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02)
            }

            Notify (\_SB.PCI0.PEG0, 0x02)
            Notify (\_SB.PCI0.PEG0.PEGP, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
            Notify (\_SB.PCI0.XHC, 0x02)
            If (LAnd (\_SB.PCI0.XHC.PMES, \_SB.PCI0.XHC.PMES))
            {
                Store (One, \_SB.PCI0.XHC.PMES)
            }
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                P8XH (One, One, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (LNot (\_SB.PCI0.RP01.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP01.L0SE)
                    }

                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                P8XH (One, 0x02, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    If (LNot (\_SB.PCI0.RP02.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP02.L0SE)
                    }

                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                P8XH (One, 0x03, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    If (LNot (\_SB.PCI0.RP03.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP03.L0SE)
                    }

                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GPEC)
            If (CondRefOf (\_SB.PCI0.IEIT.EITV))
            {
                \_SB.PCI0.IEIT.EITV ()
            }

            If (CondRefOf (\TNOT))
            {
                TNOT ()
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.IGPU.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.IGPU.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x20, \_SB.PCI0.SBUS.HSTS)
        }
    }

    Scope (\)
    {
        OperationRegion (ENE1, SystemIO, 0x0381, One)
        Field (ENE1, ByteAcc, NoLock, Preserve)
        {
            EI01,   8
        }

        OperationRegion (ENE2, SystemIO, 0x0382, One)
        Field (ENE2, ByteAcc, NoLock, Preserve)
        {
            EI02,   8
        }

        OperationRegion (ENE3, SystemIO, 0x0383, One)
        Field (ENE3, ByteAcc, NoLock, Preserve)
        {
            EI03,   8
        }

        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
                ,   14, 
            PEWS,   1, 
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
            Offset (0x3C), 
            PMEN,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
                ,   6, 
            BID4,   1, 
            Offset (0x0D), 
            BTOF,   1, 
            GP09,   1, 
            GL01,   4, 
            WLPR,   1, 
            WLOF,   1, 
            GL02,   8, 
            GP24,   1, 
                ,   2, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   8, 
            GL05,   8, 
                ,   5, 
            GLED,   1, 
            Offset (0x3B), 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }

        Method (GPI0, 4, NotSerialized)
        {
            If (LEqual (Or (Arg0, Arg1), Zero))
            {
                Return (Ones)
            }
            Else
            {
                If (And (LEqual (Arg0, Zero), LEqual (Arg1, One)))
                {
                    Return (0x0384)
                }
            }

            Return (Multiply (0x1E, Subtract (0x09, Add (Arg2, Arg3))))
        }

        Method (GDMA, 2, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                If (LEqual (Arg1, One))
                {
                    Return (0x0F)
                }
            }

            Return (Ones)
        }

        Method (SFLG, 5, NotSerialized)
        {
            Store (Zero, Local0)
            Or (Arg1, Local0, Local0)
            Or (ShiftLeft (Arg0, One), Local0, Local0)
            Or (ShiftLeft (Arg2, 0x03), Local0, Local0)
            Or (ShiftLeft (Arg3, 0x02), Local0, Local0)
            Or (ShiftLeft (Arg4, 0x04), Local0, Local0)
            Return (Local0)
        }

        Method (SPIO, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00                   
            })
            CreateByteField (PBUF, Zero, RCT)
            CreateByteField (PBUF, One, ISP)
            CreateByteField (PBUF, 0x02, FAST)
            CreateByteField (PBUF, 0x03, DMAE)
            CreateByteField (PBUF, 0x04, PIOT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, Ones)))
            {
                Return (PBUF)
            }

            If (LGreater (Arg0, 0xF0))
            {
                Store (One, DMAE)
                Store (Zero, PIOT)
            }
            Else
            {
                Store (One, FAST)
                If (And (Arg1, 0x02))
                {
                    If (And (LEqual (Arg0, 0x78), And (Arg2, 0x02)))
                    {
                        Store (0x03, RCT)
                        Store (0x02, ISP)
                        Store (0x04, PIOT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                    {
                        Store (One, RCT)
                        Store (0x02, ISP)
                        Store (0x03, PIOT)
                        Return (PBUF)
                    }
                    Else
                    {
                        Store (Zero, RCT)
                        Store (One, ISP)
                        Store (0x02, PIOT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SDMA, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00                         
            })
            CreateByteField (PBUF, Zero, PCT)
            CreateByteField (PBUF, One, PCB)
            CreateByteField (PBUF, 0x02, UDMT)
            CreateByteField (PBUF, 0x03, UDME)
            CreateByteField (PBUF, 0x04, DMAT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, Ones)))
            {
                Return (PBUF)
            }

            If (LLessEqual (Arg0, 0x78))
            {
                If (And (Arg1, 0x04))
                {
                    Store (One, UDME)
                    If (And (LLessEqual (Arg0, 0x0F), And (Arg2, 0x40)))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x06, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x14), And (Arg2, 0x20)))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x05, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x1E), And (Arg2, 0x10)))
                    {
                        Store (One, PCB)
                        Store (0x02, PCT)
                        Store (0x04, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x2D), And (Arg2, 0x08)))
                    {
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x03, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x3C), And (Arg2, 0x04)))
                    {
                        Store (0x02, PCT)
                        Store (0x02, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x5A), And (Arg2, 0x02)))
                    {
                        Store (One, PCT)
                        Store (One, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x78), And (Arg2, One)))
                    {
                        Store (Zero, DMAT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SETT, 3, Serialized)
        {
            If (And (Arg1, 0x02))
            {
                If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                {
                    Return (0x0B)
                }

                If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                {
                    Return (0x09)
                }
            }

            Return (0x04)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (LEqual (^^LPCB.EC0.ECOK, One))
                {
                    If (LAnd (Arg0, ^^LPCB.EC0.SW2S))
                    {
                        Store (0x03, PWUC)
                    }
                    Else
                    {
                        Store (Zero, PWUC)
                    }
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        ToPLD (
                            PLD_Revision       = 0x1,
                            PLD_IgnoreColor    = 0x1,
                            PLD_Red            = 0x0,
                            PLD_Green          = 0x0,
                            PLD_Blue           = 0x0,
                            PLD_Width          = 0x0,
                            PLD_Height         = 0x0,
                            PLD_UserVisible    = 0x0,
                            PLD_Dock           = 0x0,
                            PLD_Lid            = 0x0,
                            PLD_Panel          = "UNKNOWN",
                            PLD_VerticalPosition = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape          = "UNKNOWN",
                            PLD_GroupOrientation = 0x0,
                            PLD_GroupToken     = 0x0,
                            PLD_GroupPosition  = 0x0,
                            PLD_Bay            = 0x0,
                            PLD_Ejectable      = 0x0,
                            PLD_EjectRequired  = 0x0,
                            PLD_CabinetNumber  = 0x0,
                            PLD_CardCageNumber = 0x0,
                            PLD_Reference      = 0x0,
                            PLD_Rotation       = 0x0,
                            PLD_Order          = 0x0,
                            PLD_VerticalOffset = 0x0,
                            PLD_HorizontalOffset = 0x0)

                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x0,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Device (CAM0)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision       = 0x2,
                                    PLD_IgnoreColor    = 0x1,
                                    PLD_Red            = 0x0,
                                    PLD_Green          = 0x0,
                                    PLD_Blue           = 0x0,
                                    PLD_Width          = 0x0,
                                    PLD_Height         = 0x0,
                                    PLD_UserVisible    = 0x0,
                                    PLD_Dock           = 0x0,
                                    PLD_Lid            = 0x1,
                                    PLD_Panel          = "FRONT",
                                    PLD_VerticalPosition = "UPPER",
                                    PLD_HorizontalPosition = "CENTER",
                                    PLD_Shape          = "UNKNOWN",
                                    PLD_GroupOrientation = 0x0,
                                    PLD_GroupToken     = 0x0,
                                    PLD_GroupPosition  = 0x0,
                                    PLD_Bay            = 0x0,
                                    PLD_Ejectable      = 0x0,
                                    PLD_EjectRequired  = 0x0,
                                    PLD_CabinetNumber  = 0x0,
                                    PLD_CardCageNumber = 0x0,
                                    PLD_Reference      = 0x0,
                                    PLD_Rotation       = 0x0,
                                    PLD_Order          = 0x0,
                                    PLD_VerticalOffset = 0xFFFF,
                                    PLD_HorizontalOffset = 0xFFFF)

                            })
                        }

                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (EHC2)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   6
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (LEqual (^^LPCB.EC0.ECOK, One))
                {
                    If (LAnd (Arg0, ^^LPCB.EC0.SW2S))
                    {
                        Store (0x02, PWUC)
                    }
                    Else
                    {
                        Store (Zero, PWUC)
                    }
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        ToPLD (
                            PLD_Revision       = 0x1,
                            PLD_IgnoreColor    = 0x1,
                            PLD_Red            = 0x0,
                            PLD_Green          = 0x0,
                            PLD_Blue           = 0x0,
                            PLD_Width          = 0x0,
                            PLD_Height         = 0x0,
                            PLD_UserVisible    = 0x0,
                            PLD_Dock           = 0x0,
                            PLD_Lid            = 0x0,
                            PLD_Panel          = "UNKNOWN",
                            PLD_VerticalPosition = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape          = "UNKNOWN",
                            PLD_GroupOrientation = 0x0,
                            PLD_GroupToken     = 0x0,
                            PLD_GroupPosition  = 0x0,
                            PLD_Bay            = 0x0,
                            PLD_Ejectable      = 0x0,
                            PLD_EjectRequired  = 0x0,
                            PLD_CabinetNumber  = 0x0,
                            PLD_CardCageNumber = 0x0,
                            PLD_Reference      = 0x0,
                            PLD_Rotation       = 0x0,
                            PLD_Order          = 0x0,
                            PLD_VerticalOffset = 0x0,
                            PLD_HorizontalOffset = 0x0)

                    })
                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x0,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x0,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (XHC)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            OperationRegion (XPRT, PCI_Config, 0x74, 0x6C)
            Field (XPRT, DWordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0x5C), 
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            Name (XRST, Zero)
            Method (CUID, 1, Serialized)
            {
                If (LEqual (Arg0, ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (POSC, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, CDW1)
                CreateDWordField (Arg2, 0x08, CDW3)
                If (LNotEqual (Arg1, One))
                {
                    Or (CDW1, 0x08, CDW1)
                }

                If (LEqual (XHCI, Zero))
                {
                    Or (CDW1, 0x02, CDW1)
                }

                If (LNot (And (CDW1, One)))
                {
                    If (And (CDW3, One))
                    {
                        ESEL ()
                    }
                    Else
                    {
                        XSEL ()
                    }
                }

                Return (Arg2)
            }

            Method (XSEL, 0, Serialized)
            {
                If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                {
                    Store (One, XUSB)
                    Store (One, XRST)
                    Store (Zero, Local0)
                    And (PR3, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    And (Local0, PR3M, PR3)
                    Store (Zero, Local0)
                    And (PR2, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    And (Local0, PR2M, PR2)
                }
            }

            Method (ESEL, 0, Serialized)
            {
                If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                {
                    And (PR3, 0xFFFFFFF0, PR3)
                    And (PR2, 0xFFFFFFF0, PR2)
                    Store (Zero, XUSB)
                    Store (Zero, XRST)
                }
            }

            Method (XWAK, 0, Serialized)
            {
                If (LOr (LEqual (XUSB, One), LEqual (XRST, One)))
                {
                    XSEL ()
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HSP1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, One)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x59, 0x11, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, One)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (HSP2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, 0x02)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x59, 0x11, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x02)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (HSP3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, 0x04)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x04)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (HSP4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR2, 0x08)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x08)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP1)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, One)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x59, 0x11, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, One)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP2)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, 0x02)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x59, 0x11, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x02)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP3)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, 0x04)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x04)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }

                Device (SSP4)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (LNot (And (PR3, 0x08)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }

                        Return (UPCP)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x08)))
                        {
                            And (VIS, Zero, VIS)
                        }

                        Return (PLDP)
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                    ,   15, 
                PMES,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }
        }

        Device (RP01)
        {
            Name (_ADR, 0x001C0000)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x03
                    })
                }
                Return (Package (0x02)
                {
                    0x00, 
                    0x00
                })
            }

            Name (PR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05)
                }

                Return (PR05)
            }
        }

        Device (RP02)
        {
            Name (_ADR, 0x001C0001)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }
            })
            Name (AR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06)
                }

                Return (PR06)
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (RTLD, PCI_Config, Zero, 0x02)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    RVID,   16
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (RVID, 0xFFFF))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    Store (Arg0, LANP)
                }
            }
        }

        Device (RP03)
        {
            Name (_ADR, 0x001C0002)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x09, 
                    Zero
                })
            }

            Name (PR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }
            })
            Name (AR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07)
                }

                Return (PR07)
            }

            Device (CRD0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (CRD1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }

                Return (Ones)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }
            Device (BUS0)
            {
                Name (_CID, "smbus")
                Name (_ADR, Zero)
                Device (DVL0)
                {
                    Name (_ADR, 0x57)
                    Name (_CID, "diagsvault")
                    Method (_DSM, 4, NotSerialized)
                    {
                        If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                        Return (Package() { "address", 0x57 })
                    }
                }
            }
        }
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000) {})
    OperationRegion (MDBG, SystemMemory, 0x3AFB8018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        SHOW (Arg0)
        MDGC (0x20)
    }

    Method (DW2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x08, Local1)
        And (Local0, 0xFF, Local0)
        And (Local1, 0xFF, Local1)
        DB2H (Local1)
        Decrement (BUFN)
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x10, Local1)
        And (Local0, 0xFFFF, Local0)
        And (Local1, 0xFFFF, Local1)
        DW2H (Local1)
        Decrement (BUFN)
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (BUFS, Buffer (Local0) {})
        Store (Arg0, BUFS)
        MDGC (0x20)
        While (Local0)
        {
            MDGC (DerefOf (Index (BUFS, Subtract (SizeOf (Arg0), Local0))))
            Decrement (Local0)
        }
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC (ShiftRight (Arg0, 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Store (BUFN, Local0)
        And (Local0, 0x0F, Local0)
        While (Local0)
        {
            MDGC (Zero)
            Increment (Local0)
            And (Local0, 0x0F, Local0)
        }
    }

    Method (MDGC, 1, Serialized)
    {
        Store (Arg0, Index (MBUF, BUFN))
        Add (BUFN, One, BUFN)
        If (LGreater (BUFN, 0x0FFF))
        {
            And (BUFN, 0x0FFF, BUFN)
            UP_L (One)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Store (Arg0, Local2)
        ShiftLeft (Local2, 0x04, Local2)
        MOVE (Local2)
        Subtract (0x1000, Local2, Local3)
        While (Local2)
        {
            Store (Zero, Index (MBUF, Local3))
            Increment (Local3)
            Decrement (Local2)
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Store (Arg0, Local4)
        Store (Zero, BUFN)
        Subtract (0x1000, Local4, Local5)
        While (Local5)
        {
            Decrement (Local5)
            Store (DerefOf (Index (MBUF, Local4)), Index (MBUF, BUFN))
            Increment (BUFN)
            Increment (Local4)
        }
    }

    Method (NTOC, 1, Serialized)
    {
        And (Arg0, 0x0F, Local0)
        If (LLess (Local0, 0x0A))
        {
            Add (Local0, 0x30, Local0)
        }
        Else
        {
            Add (Local0, 0x37, Local0)
        }

        Return (Local0)
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

