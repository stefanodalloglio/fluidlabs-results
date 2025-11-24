 ************************************************************
 
 
   ----------------------------------------------------------  
   PHOENICS 2022 v1.0 - EARTH                                  
   (C) Copyright 2022                                          
   Concentration Heat and Momentum Limited                     
   All rights reserved.                                        
   Address:  Bakery House, 40 High Street                      
   Wimbledon, London, SW19 5AU, England                        
   tel:       +44 (0) 20-8947-7651                             
   fax:       +44 (0) 20-8879-3497                             
   e-mail:    phoenics@cham.co.uk                              
   web:       www.cham.co.uk                                   
   ----------------------------------------------------------  
   Code expiry date is the end  : feb 2026                     
   ----------------------------------------------------------  
   Running with 64-bit Double Precision executable             
   Working directory: C:\phoenics\d_priv1
 
 ************************************************************
 
 Initial estimated storage requirement is                  10000000
 
 PRPS is not stored
 Material properties used for phase 1 are
 density
 laminar viscosity
 turbulent viscosity
 mixing length
 >>>   End of property-related data   <<<
 ************************************************************
 
 Number of F-array locations available is                  10000000
 Number used before BFC allowance is                        1144319
 Number used after BFC allowance is                         1144319
 ************************************************************
 
  Standard k-e model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.44 C2E =1.92
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     3.86853821959969       at:
 ix = 1 iy = 59 iz = 202
 xg =0.26 yg =0.049167 zg =4.03
 smallest cell volume divided by average is   1.638865944524543E-002  at:
 ix = 1 iy = 1 iz = 113
 xg =0.26 yg =4.166637E-04 zg =2.25
 ratio of smallest to biggest is   4.236395898123323E-003
 ************************************************************
 
 -------- Recommended settings -------
 CONWIZ=T activates settings based on
 refrho =1. refvel =10. reflen =1. reftemp =50.
 rlxdu1 =0.5 rlxdv1 =0.5 rlxdw1 =0.5
 Maximum change of V1   per sweep=   100.000000000000     
 Maximum change of W1   per sweep=   100.000000000000     
 Maximum change of KE   per sweep=   1.00000000000000     
 Maximum change of EP   per sweep=   1000.00000000000     
 relaxation and min/max values left at
 defaults may have been changed
 
 ************************************************************
 SParsol activated
 ************************************************************
  Group 1. Run Title and Number
 ************************************************************
 ************************************************************
 
 TEXT(Lab2                                    )
 
 ************************************************************
 ************************************************************
 
 IRUNN = 1 ;LIBREF = 0
 ************************************************************
  Group 2. Time dependence
 STEADY = T
 ************************************************************
  Group 3. X-Direction Grid Spacing
 CARTES = F
 NX = 1
 XULAST =0.52
 ************************************************************
  Group 4. Y-Direction Grid Spacing
 NY = 59
 YVLAST =0.05
 YFRAC(1)=0.016667 ;YFRAC(12)=0.199999
 YFRAC(23)=0.383331 ;YFRAC(34)=0.566663
 YFRAC(45)=0.749995 ;YFRAC(56)=0.933327
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 400
 ZWLAST =8.
 ZFRAC(1)=2.5E-03 ;ZFRAC(81)=0.2025
 ZFRAC(161)=0.4025 ;ZFRAC(241)=0.6025
 ZFRAC(321)=0.8025
 ************************************************************
  Group 6. Body-Fitted Coordinates
 ************************************************************
  Group 7. Variables: STOREd,SOLVEd,NAMEd
 ONEPHS = T
 NAME(1)=P1 ;NAME(5)=V1
 NAME(7)=W1 ;NAME(12)=KE
 NAME(13)=EP ;NAME(145)=ENUT
 NAME(146)=YPLS ;NAME(147)=STRS
 NAME(148)=DEN1 ;NAME(149)=EPKE
 NAME(150)=DWDY
    * Y in SOLUTN argument list denotes:
    * 1-stored 2-solved 3-whole-field
    * 4-point-by-point 5-explicit 6-harmonic averaging 
 SOLUTN(P1,Y,Y,Y,N,N,Y)
 SOLUTN(V1,Y,Y,Y,N,N,Y)
 SOLUTN(W1,Y,Y,Y,N,N,N)
 SOLUTN(KE,Y,Y,N,N,N,N)
 SOLUTN(EP,Y,Y,N,N,N,N)
 SOLUTN(ENUT,Y,N,N,N,N,Y)
 SOLUTN(YPLS,Y,N,N,N,N,Y)
 SOLUTN(STRS,Y,N,N,N,N,Y)
 SOLUTN(DEN1,Y,N,N,N,N,Y)
 SOLUTN(EPKE,Y,N,N,N,N,Y)
 SOLUTN(DWDY,Y,N,N,N,N,Y)
 DEN1 = 148
 VIST = 145
 ************************************************************
  Group 8. Terms & Devices
    * Y in TERMS argument list denotes:
    * 1-built-in source 2-convection 3-diffusion 4-transient
    * 5-first phase variable 6-interphase transport         
 TERMS(P1,Y,Y,Y,N,Y,N)
 TERMS(V1,Y,Y,Y,N,Y,N)
 TERMS(W1,Y,Y,Y,N,Y,N)
 TERMS(KE,N,Y,Y,N,Y,N)
 TERMS(EP,N,Y,Y,N,Y,N)
 DIFCUT =0.5 ;ZDIFAC =1.
 GALA = F ;ADDDIF = T
 NEWENT = T
 ISOLX = 0 ;ISOLY = -1 ;ISOLZ = -1
 ************************************************************
  Group 9. Properties used if PRPS is not
  stored, and where PRPS = -1.0 if it is!
 RHO1 =998.23 ;TMP1 =0. ;EL1 = GRND4
 TSURR =0. ;TEMP0 =273.15 ;PRESS0 =1.01325E+05
 DVO1DT =1.18E-04 ;DRH1DP =0.
 EMISS =0. ;SCATT =0.
 RADIA =0. ;RADIB =0.
 EL1A =0. ;EL1B =0. ;EL1C =0.
 ENUL =1.006E-06 ;ENUT = GRND3
 ENUTA =0. ;ENUTB =0. ;ENUTC =0.
 IENUTA = 0
 PRNDTL(V1)=1. ;PRNDTL(W1)=1.
 PRNDTL(KE)=1. ;PRNDTL(EP)=1.
 PRT(V1)=1. ;PRT(W1)=1.
 PRT(KE)=1. ;PRT(EP)=1.314
 CP1 =4181.8 ;CP2 =1.
 ************************************************************
  Group 10.Inter-Phase Transfer Processes
 ************************************************************
  Group 11.Initial field variables (PHIs)
 FIINIT(P1)=0. ;FIINIT(V1)=1.0E-10
 FIINIT(W1)=1.0E-10 ;FIINIT(KE)=5.625E-17
 FIINIT(EP)=1.386463E-23 ;FIINIT(ENUT)=1.0E-10
 FIINIT(YPLS)=1.0E-10 ;FIINIT(STRS)=1.0E-10
 FIINIT(DEN1)=998.23 ;FIINIT(EPKE)=1.0E-10
 FIINIT(DWDY)=1.0E-10
   No PATCHes yet used for this Group
 INIADD = F
 FSWEEP = 1
 NAMFI =CHAM
 ************************************************************
  Group 12. Patchwise adjustment of terms
  Patches for this group are printed with those
  for Group 13.
  Their names begin either with GP12 or &
 ************************************************************
  Group 13. Boundary & Special Sources
 
   Parent VR object for this patch is: INLE1         
 PATCH(OB1 ,LOW , 1, 1, 1, 59, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,748.6725 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.75 )
 COVAL(OB1 ,KE ,0. ,5.625E-17 )
 COVAL(OB1 ,EP ,0. ,1.386463E-23 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 59, 400, 400, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 COVAL(OB2 ,KE ,0. , SAME )
 COVAL(OB2 ,EP ,0. , SAME )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 59, 59, 1, 400, 1, 1)
 COVAL(OB3 ,W1 , GRND2 ,0. )
 COVAL(OB3 ,KE , GRND2 , GRND2 )
 COVAL(OB3 ,EP , GRND2 , GRND2 )
 
 PATCH(KESOURCE,PHASEM, 1, 1, 1, 59, 1, 400, 1, 1)
 COVAL(KESOURCE,KE , GRND4 , GRND4 )
 COVAL(KESOURCE,EP , GRND4 , GRND4 )
 XCYCLE = F
 EGWF = F
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 3000 ;ISWC1 = 1
 LITHYD = 1 ;LITFLX = 1 ;LITC = 1 ;ITHC1 = 1
 SELREF = T
 RESFAC =1.0E-05
 ************************************************************
  Group 16. Terminate Iterations
 LITER(P1)=200 ;LITER(V1)=10
 LITER(W1)=10 ;LITER(KE)=20
 LITER(EP)=20
 ENDIT(P1)=1.0E-03 ;ENDIT(V1)=1.0E-03
 ENDIT(W1)=1.0E-03 ;ENDIT(KE)=1.0E-03
 ENDIT(EP)=1.0E-03
 ************************************************************
  Group 17. Relaxation
 RELAX(P1,LINRLX,0.5)
 RELAX(V1,LINRLX,0.5)
 RELAX(W1,LINRLX,0.5)
 RELAX(KE,LINRLX,0.5)
 RELAX(EP,LINRLX,0.5)
 RELAX(ENUT,LINRLX,0.5)
 RELAX(YPLS,LINRLX,1.)
 RELAX(STRS,LINRLX,1.)
 RELAX(DEN1,LINRLX,0.5)
 RELAX(EPKE,LINRLX,1.)
 RELAX(DWDY,LINRLX,1.)
 KELIN = 3
 OVRRLX =0.
 EXPERT = F ;NNORSL = F
 ************************************************************
  Group 18. Limits
 VARMAX(P1)=1.0E+10 ;VARMIN(P1)=-1.0E+10
 VARMAX(V1)=1.0E+06 ;VARMIN(V1)=-1.0E+06
 VARMAX(W1)=1.0E+06 ;VARMIN(W1)=-1.0E+06
 VARMAX(KE)=1.0E+10 ;VARMIN(KE)=1.0E-10
 VARMAX(EP)=1.0E+10 ;VARMIN(EP)=1.0E-10
 VARMAX(ENUT)=1.0E+10 ;VARMIN(ENUT)=1.0E-10
 VARMAX(YPLS)=1.0E+10 ;VARMIN(YPLS)=-1.0E+10
 VARMAX(STRS)=1.0E+10 ;VARMIN(STRS)=-1.0E+10
 VARMAX(DEN1)=1.0E+10 ;VARMIN(DEN1)=1.0E-06
 VARMAX(EPKE)=1.0E+10 ;VARMIN(EPKE)=1.0E-10
 VARMAX(DWDY)=1.0E+10 ;VARMIN(DWDY)=-1.0E+10
 ************************************************************
  Group 19. Data transmitted to GROUND
 DWDY = T
 GENK = T
 PARSOL = F
 CONWIZ = T
 GEN1 = 681
 ISG62 = 0
 SPEDAT(SET,GXMONI,PLOTALL,L,T)
 SPEDAT(SET,OBJNAM,^OB1,C,INLE1)
 SPEDAT(SET,OBJTYP,^OB1,C,INLET)
 SPEDAT(SET,OBJNAM,^OB2,C,OUTL2)
 SPEDAT(SET,OBJTYP,^OB2,C,OUTLET)
 SPEDAT(SET,ARATIO,^OB2,R,1.)
 SPEDAT(SET,OBJNAM,^OB3,C,PLAT3)
 SPEDAT(SET,OBJTYP,^OB3,C,PLATE)
 SPEDAT(SET,OBJNAM,!OB4,C,NULL4)
 SPEDAT(SET,OBJTYP,!OB4,C,NULL)
 SPEDAT(SET,FACETDAT,NUMOBJ,I,4)
 ************************************************************
  Group 20. Preliminary Printout
 ************************************************************
  Group 21. Print-out of Variables
 INIFLD = F ;SUBWGR = F
    * Y in OUTPUT argument list denotes:
    * 1-field 2-correction-eq. monitor 3-selective dumping      
    * 4-whole-field residual 5-spot-value table 6-residual table
 OUTPUT(P1,N,N,Y,Y,Y,Y)
 OUTPUT(V1,N,N,Y,Y,Y,Y)
 OUTPUT(W1,N,N,Y,Y,Y,Y)
 OUTPUT(KE,N,N,Y,Y,Y,Y)
 OUTPUT(EP,N,N,Y,Y,Y,Y)
 OUTPUT(ENUT,N,N,Y,N,N,N)
 OUTPUT(YPLS,N,N,Y,N,N,N)
 OUTPUT(STRS,N,N,Y,N,N,N)
 OUTPUT(DEN1,N,N,Y,N,N,N)
 OUTPUT(EPKE,N,N,Y,N,N,N)
 OUTPUT(DWDY,N,N,Y,N,N,N)
 WALPRN = T
 ************************************************************
  Group 22. Monitor Print-Out
 IXMON = 1 ;IYMON = 53 ;IZMON = 393
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 3000 ;NUMCLS = 5
 NYPRIN = 11 ;IYPRF = 1 ;IYPRL = 59
 NZPRIN = 80 ;IZPRF = 1 ;IZPRL = 10000
 XZPR = F ;YZPR = T
 IPLTF = 1 ;IPLTL = 3000 ;NPLT = 150
 ISWPRF = 1 ;ISWPRL = 100000
 ITABL = 3 ;IPROF = 1
 ABSIZ =0.5 ;ORSIZ =0.4
 NTZPRF = 1 ;NCOLPF = 50
 ICHR = 2 ;NCOLCO = 45 ;NROWCO = 20
   No PATCHes yet used for this Group
 ************************************************************
  Group 24. Dumps For Restarts
 SAVE = T ;NOWIPE = F
 NSAVE =CHAM
 
 *** grid-geometry information ***
 X-coordinates of the cell centres
    2.600E-01
 Y-coordinates of the cell centres
    4.167E-04   9.583E-03   1.875E-02   2.792E-02   3.708E-02
    4.625E-02
 Z-coordinates of the cell centres
    1.000E-02   1.610E+00   3.210E+00   4.810E+00   6.410E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    8.333E-04   1.000E-02   1.917E-02   2.833E-02   3.750E-02
    4.667E-02
 Z-coordinates of the (higher) cell faces
    2.000E-02   1.620E+00   3.220E+00   4.820E+00   6.420E+00

 
 Total number of F-array elements used is                   1147826
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 *** End of sweep 3000
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 3000
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     9.931E-01   4.958E-11      4.924E-11
     V1     1.115E+00   6.442E-06      7.185E-06
     W1     1.115E+00   1.768E-04      1.972E-04
     KE     1.092E-01   7.930E-06      8.661E-07
     EP     1.395E+00   1.536E-06      2.142E-06
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.387E-04   4.361E+02      5.124E-01 (    1,   59,  285)
     V1     3.847E-08   1.597E-03     -3.184E-03 (    1,   27,  235)
     W1     1.476E-06   9.298E-01      4.797E-01 (    1,    1,  254)
     KE     2.779E-08   8.345E-03      1.000E-10 (    1,   30,  279)
     EP     1.072E-07   3.665E-01      1.000E-10 (    1,   58,  248)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-2.366569E-04
 pos. sum=0. neg. sum=-2.366569E-04
 nett sum=-2.366569E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 3.649760E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.717482E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-2.752675E-01
 pos. sum=0.364976 neg. sum=-0.647016
 nett sum=-0.28204
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 4.866346E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-4.866346E-01 (Mass Out -4.866346E-01 In 0.000000E+00)
 pos. sum=0.486635 neg. sum=-0.486635
 nett sum=-9.048318E-15
 
 Nett source of KE   at patch named: OB1      (INLE1       ) = 2.737320E-17 (Average  5.625000E-17)
 Nett source of KE   at patch named: OB2      (OUTL2       ) =-1.444762E-03 (Ave Out  2.968888E-03 In  0.000000E+00)
 Nett source of KE   at patch named: OB3      (PLAT3       ) =-2.077274E-14
 Nett source of KE   at patch named: KESOURCE                =-5.330444E-02
 Non-linearised source for KE    at: KESOURCE                = 5.390019E-02
 pos. sum=0.0539 neg. sum=-0.054749
 nett sum=-8.490035E-04
 
 Nett source of EP   at patch named: OB1      (INLE1       ) = 6.747009E-24 (Average  1.386463E-23)
 Nett source of EP   at patch named: OB2      (OUTL2       ) =-7.868542E-03 (Ave Out  1.616931E-02 In  0.000000E+00)
 Nett source of EP   at patch named: OB3      (PLAT3       ) =-9.952644E-13
 Nett source of EP   at patch named: KESOURCE                =-7.778272E-01
 Non-linearised source for EP    at: KESOURCE                = 5.970324E-01
 pos. sum=0.597032 neg. sum=-0.785696
 nett sum=-0.188663
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  3000
    Variable      Inflow        Outflow       Nett
       P1       4.866346E-01 -4.866346E-01 -9.048318E-15
       V1       0.000000E+00 -2.366569E-04 -2.366569E-04
       W1       3.649760E-01 -6.470157E-01 -2.820397E-01
       KE       5.390019E-02 -5.474920E-02 -8.490035E-04
       EP       5.970324E-01 -7.856957E-01 -1.886634E-01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 53 IZMON= 393 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   0.0000E+00   9.9999E-11   1.0000E-10   1.0000E-10   1.0000E-10
    151   5.1714E+00   4.1322E-08   7.1334E-01   2.9139E-03   1.7075E-02
    301   7.0660E+00   2.9834E-08   6.8825E-01   3.5431E-03   1.8960E-02
    451   7.8551E+00   3.6617E-08   6.8458E-01   3.7272E-03   1.8990E-02
    601   7.7701E+00   3.6263E-08   6.8481E-01   3.8277E-03   1.9093E-02
    751   7.8049E+00  -8.4280E-08   6.8564E-01   3.8371E-03   1.8996E-02
    901   7.8665E+00  -1.4958E-07   6.8628E-01   3.8195E-03   1.8892E-02
   1051   7.9111E+00  -1.9993E-07   6.8662E-01   3.8025E-03   1.8830E-02
   1201   7.9355E+00  -2.4927E-07   6.8676E-01   3.7917E-03   1.8802E-02
   1351   7.9469E+00  -2.7111E-07   6.8679E-01   3.7859E-03   1.8790E-02
   1501   7.9512E+00  -2.5818E-07   6.8678E-01   3.7830E-03   1.8786E-02
   1651   7.9521E+00  -2.1708E-07   6.8675E-01   3.7818E-03   1.8785E-02
   1801   7.9513E+00  -1.5801E-07   6.8672E-01   3.7815E-03   1.8786E-02
   1951   7.9499E+00  -9.0055E-08   6.8670E-01   3.7816E-03   1.8788E-02
   2101   7.9484E+00  -1.9820E-08   6.8668E-01   3.7820E-03   1.8789E-02
   2251   7.9470E+00   4.8429E-08   6.8666E-01   3.7824E-03   1.8790E-02
   2401   7.9458E+00   1.1226E-07   6.8665E-01   3.7828E-03   1.8791E-02
   2551   7.9448E+00   1.7053E-07   6.8664E-01   3.7831E-03   1.8792E-02
   2701   7.9441E+00   2.2293E-07   6.8663E-01   3.7835E-03   1.8793E-02
   2851   7.9435E+00   2.6968E-07   6.8663E-01   3.7838E-03   1.8794E-02
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval=  0.000E+00 -2.711E-07  1.000E-10  1.000E-10  1.000E-10
     Maxval=  7.952E+00  2.697E-07  7.133E-01  3.837E-03  1.909E-02
     Cellav=  7.340E+00 -3.647E-08  6.535E-01  3.544E-03  1.782E-02
 1.00 +..3.5..5.+5.5.+5.5.+5..5+5..5+.5.5+.5.5+.5..5.5..5
      .    3  4  3 3  3 3  3  3 3  3  3 3  3 3  3  3 3  3
 0.90 +  5 4                                         2  +
      .                                                 .
 0.80 +                                            2    +
      .  4                                              .
 0.70 +                                         2       +
      .  1                                              .
 0.60 +  2                                   2          +
      .    2  2  2                                      .
 0.50 2                                                 +
      .                                    2            .
 0.40 +                                                 +
      .            2                    2               .
 0.30 +                                                 +
      .                                                 .
 0.20 +               2               2                 +
      .                 2                               .
 0.10 +                            2                    +
      .                    2                            .
 0.00 5....+....+....+....+...2+2...+....+....+....+....+
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 2.85E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   1.1000E+00   4.6008E-11   2.4913E-01   4.8251E-10   8.8794E-10
    151   3.1438E-07   3.1840E-04   2.3467E-01   2.5804E-02   6.5158E-03
    301   9.1186E-08   3.6012E-04   1.1433E-01   1.5465E-02   2.6935E-03
    451   2.4438E-08   2.9166E-04   4.9686E-02   9.5841E-03   1.3000E-03
    601   1.0785E-08   1.6950E-04   2.3288E-02   4.1237E-03   5.3408E-04
    751   5.5557E-09   1.1927E-04   1.2182E-02   1.3999E-03   2.1011E-04
    901   3.0482E-09   9.1732E-05   7.3626E-03   5.5826E-04   1.0696E-04
   1051   1.6549E-09   7.4770E-05   4.9236E-03   3.1317E-04   6.4995E-05
   1201   9.6221E-10   6.2473E-05   3.4017E-03   2.3275E-04   4.4448E-05
   1351   5.9397E-10   5.2440E-05   2.4021E-03   1.7610E-04   3.0840E-05
   1501   3.9703E-10   4.3867E-05   1.7381E-03   1.2966E-04   2.1453E-05
   1651   2.9498E-10   3.6511E-05   1.2919E-03   9.3768E-05   1.5035E-05
   1801   2.4396E-10   3.0251E-05   9.8879E-04   6.7125E-05   1.0767E-05
   1951   2.1213E-10   2.5017E-05   7.7899E-04   4.8092E-05   7.9300E-06
   2101   1.7911E-10   2.0654E-05   6.2336E-04   3.4999E-05   6.0049E-06
   2251   1.4771E-10   1.7032E-05   5.0274E-04   2.6087E-05   4.6553E-06
   2401   1.1950E-10   1.4033E-05   4.0709E-04   1.9961E-05   3.6727E-06
   2551   9.5321E-11   1.1555E-05   3.3027E-04   1.5607E-05   2.9298E-06
   2701   7.6064E-11   9.5093E-06   2.6810E-04   1.2367E-05   2.3531E-06
   2851   6.1215E-11   7.8228E-06   2.1762E-04   9.8755E-06   1.8976E-06
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval= -2.352E+01 -2.380E+01 -8.433E+00 -2.145E+01 -2.084E+01
     Maxval=  9.531E-02 -7.929E+00 -1.390E+00 -3.657E+00 -5.034E+00
 1.00 3..5.2..2.+....+....+....+....+....+....+....+....+
      .    5  4  2 2                                    .
 0.90 +    3  5  4    2 2  2  2                         +
      .          5 4            2  2  2 2               .
 0.80 +            5  4                    2 2  2  2    +
      .       3       5 4  4                         2  2
 0.70 +                 5  5  4 4  4                    +
      .          3            5 5     4 4  4            .
 0.60 +                            5  5 5    4  4  4    +
      .            3                       5 5  5    4  4
 0.50 +               3                            5 5  5
      .                 3                               .
 0.40 +                    3                            +
      .  1                    3                         .
 0.30 +    1                    3                       +
      .       1                    3                    .
 0.20 +          1 1                  3 3               +
      .               1 1                  3            .
 0.10 +                    1  1 1            3  3       +
      .                            1  1 1  1 1  1  3 3  .
 0.00 5....+....+....+....+....+....+....+....+....1.1..3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 2.85E+03
 
 ************************************************************
 
 ************************************************************
  Patch-wise Printout from GXYPLS
Variable= Sk.Fr.Co, at patch named: OB3      and  IX=     1
 IY=    59  4.863E-03  5.480E-03  5.440E-03  5.431E-03  5.435E-03
 IZ=          1         81        161        241        321
 
 ************************************************************
 
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 06:16:54 on Monday, 24 November 2025                           
 Run completed at 06:19:26 on Monday, 24 November 2025                         
 CPU time of run 154 s
 This includes 154 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 4.350E-07
 ************************************************************
