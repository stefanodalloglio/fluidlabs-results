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
 Number used before BFC allowance is                         547468
 Number used after BFC allowance is                          547468
 ************************************************************
 
  Standard k-e model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.44 C2E =1.92
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     1.96428648571444       at:
 ix = 1 iy = 28 iz = 202
 xg =0.26 yg =0.049107 zg =4.03
 smallest cell volume divided by average is   3.571429428571610E-002  at:
 ix = 1 iy = 1 iz = 113
 xg =0.26 yg =8.928573E-04 zg =2.25
 ratio of smallest to biggest is   1.818181540495928E-002
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
 NY = 28
 YVLAST =0.05
 YFRAC(1)=0.035714 ;YFRAC(6)=0.214286
 YFRAC(11)=0.392857 ;YFRAC(16)=0.571429
 YFRAC(21)=0.75 ;YFRAC(26)=0.928571
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
 PATCH(OB1 ,LOW , 1, 1, 1, 28, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,748.6725 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.75 )
 COVAL(OB1 ,KE ,0. ,5.625E-17 )
 COVAL(OB1 ,EP ,0. ,1.386463E-23 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 28, 400, 400, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 COVAL(OB2 ,KE ,0. , SAME )
 COVAL(OB2 ,EP ,0. , SAME )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 28, 28, 1, 400, 1, 1)
 COVAL(OB3 ,W1 , GRND2 ,0. )
 COVAL(OB3 ,KE , GRND2 , GRND2 )
 COVAL(OB3 ,EP , GRND2 , GRND2 )
 
 PATCH(KESOURCE,PHASEM, 1, 1, 1, 28, 1, 400, 1, 1)
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
 SPEDAT(SET,FACETDAT,NUMOBJ,I,3)
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
 IXMON = 1 ;IYMON = 25 ;IZMON = 45
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 3000 ;NUMCLS = 5
 NYPRIN = 5 ;IYPRF = 1 ;IYPRL = 28
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
    8.929E-04   9.821E-03   1.875E-02   2.768E-02   3.661E-02
    4.554E-02
 Z-coordinates of the cell centres
    1.000E-02   1.610E+00   3.210E+00   4.810E+00   6.410E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    1.786E-03   1.071E-02   1.964E-02   2.857E-02   3.750E-02
    4.643E-02
 Z-coordinates of the (higher) cell faces
    2.000E-02   1.620E+00   3.220E+00   4.820E+00   6.420E+00

 
 Total number of F-array elements used is                    550820
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep  1686 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 1687
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 1687
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     9.933E-01   2.379E-11      2.363E-11
     V1     1.120E+00   4.244E-07      4.753E-07
     W1     1.120E+00   9.846E-06      1.103E-05
     KE     1.104E-01   1.371E-06      1.514E-07
     EP     1.310E+00   2.927E-07      3.833E-07
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     3.953E-05   4.392E+02      5.179E-01 (    1,   28,  336)
     V1     7.865E-09   1.448E-03     -3.105E-03 (    1,   13,  339)
     W1     3.477E-07   9.308E-01      4.884E-01 (    1,    1,  367)
     KE     7.809E-09   8.215E-03      1.000E-10 (    1,   13,  394)
     EP     1.652E-08   3.342E-01      1.000E-10 (    1,   27,  353)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-2.276759E-04
 pos. sum=0. neg. sum=-2.276759E-04
 nett sum=-2.276759E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 3.649760E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.717252E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-2.773488E-01
 pos. sum=0.364976 neg. sum=-0.649074
 nett sum=-0.284098
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 4.866346E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-4.866346E-01 (Mass Out -4.866346E-01 In 0.000000E+00)
 pos. sum=0.486635 neg. sum=-0.486635
 nett sum=-2.442491E-15
 
 Nett source of KE   at patch named: OB1      (INLE1       ) = 2.737320E-17 (Average  5.625000E-17)
 Nett source of KE   at patch named: OB2      (OUTL2       ) =-1.473479E-03 (Ave Out  3.027898E-03 In  0.000000E+00)
 Nett source of KE   at patch named: OB3      (PLAT3       ) =-6.114928E-15
 Nett source of KE   at patch named: KESOURCE                =-5.373923E-02
 Non-linearised source for KE    at: KESOURCE                = 5.461837E-02
 pos. sum=0.054618 neg. sum=-0.055213
 nett sum=-5.943403E-04
 
 Nett source of EP   at patch named: OB1      (INLE1       ) = 6.747009E-24 (Average  1.386463E-23)
 Nett source of EP   at patch named: OB2      (OUTL2       ) =-8.033012E-03 (Ave Out  1.650728E-02 In  0.000000E+00)
 Nett source of EP   at patch named: OB3      (PLAT3       ) =-2.752995E-13
 Nett source of EP   at patch named: KESOURCE                =-7.245932E-01
 Non-linearised source for EP    at: KESOURCE                = 5.629031E-01
 pos. sum=0.562903 neg. sum=-0.732626
 nett sum=-0.169723
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1687
    Variable      Inflow        Outflow       Nett
       P1       4.866346E-01 -4.866346E-01 -2.442491E-15
       V1       0.000000E+00 -2.276759E-04 -2.276759E-04
       W1       3.649760E-01 -6.490740E-01 -2.840980E-01
       KE       5.461837E-02 -5.521271E-02 -5.943403E-04
       EP       5.629031E-01 -7.326262E-01 -1.697231E-01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 25 IZMON= 45 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   0.0000E+00   9.9999E-11   1.0000E-10   1.0000E-10   1.0000E-10
    151   3.3203E+02  -1.6816E-06   6.8692E-01   3.2047E-03   1.9067E-02
    301   3.6553E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
    451   3.6720E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
    601   3.7410E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
    751   3.7554E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
    901   3.7550E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
   1051   3.7541E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
   1201   3.7537E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
   1351   3.7536E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
   1501   3.7535E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
   1651   3.7535E+02  -1.2684E-04   6.8297E-01   3.2147E-03   1.9045E-02
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval=  0.000E+00 -1.268E-04  1.000E-10  1.000E-10  1.000E-10
     Maxval=  3.755E+02  1.000E-10  6.869E-01  3.215E-03  1.907E-02
     Cellav=  3.389E+02 -1.058E-04  6.264E-01  2.946E-03  1.746E-02
 1.00 2....5...5+...5+..5.+..5.+.5..+.5..+5...+5...5....5
      .        1                                        .
 0.90 +    1                                            +
      .                                                 .
 0.80 +                                                 +
      .                                                 .
 0.70 +                                                 +
      .                                                 .
 0.60 +                                                 +
      .                                                 .
 0.50 +                                                 +
      .                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 5....+...2+...2+..2.+..2.+.2..+.2..+2...+2...2....2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 1.65E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   1.1000E+00   4.5718E-11   2.4913E-01   4.8014E-10   8.8358E-10
    151   3.4126E-07   2.7419E-04   1.4674E-01   3.3209E-02   6.9139E-03
    301   4.2764E-08   2.0660E-04   2.7344E-02   1.6774E-02   2.2479E-03
    451   2.9141E-08   9.9430E-05   1.5302E-02   1.8338E-03   4.3384E-04
    601   9.7265E-09   4.7719E-05   5.5129E-03   1.9210E-03   3.3544E-04
    751   3.9782E-09   3.0292E-05   1.6903E-03   5.0155E-04   7.1928E-05
    901   1.9287E-09   1.5192E-05   7.4078E-04   1.2006E-04   2.3854E-05
   1051   6.7438E-10   7.6982E-06   3.2578E-04   5.3452E-05   1.0555E-05
   1201   2.4888E-10   4.0400E-06   1.4094E-04   2.3984E-05   4.6397E-06
   1351   1.0939E-10   2.0910E-06   6.1517E-05   1.0301E-05   2.0135E-06
   1501   5.5117E-11   1.0548E-06   2.7172E-05   4.3067E-06   8.6711E-07
   1651   2.7599E-11   5.1032E-07   1.2002E-05   1.7271E-06   3.6375E-07
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval= -2.431E+01 -2.381E+01 -1.133E+01 -2.146E+01 -2.085E+01
     Maxval=  9.531E-02 -8.202E+00 -1.390E+00 -3.405E+00 -4.974E+00
 1.00 3....5...2+....+....+....+....+....+....+....+....+
      .    3   5    2                                   .
 0.90 +                 2                               +
      .             5   4    2                          .
 0.80 +        3        5        2                      +
      .                      4        2   2             .
 0.70 +             3        5   4             2        +
      .                          5    4            2    .
 0.60 +                 3             5   4             2
      .                                   5    4        .
 0.50 +                      3                 5   4    +
      .                                            5    4
 0.40 +    1                     3                      5
      .                               3                 .
 0.30 +        1    1                                   +
      .                 1                 3             .
 0.20 +                      1                          +
      .                          1    1        3        .
 0.10 +                                   1        3    +
      .                                        1   1    .
 0.00 5....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 1.65E+03
 
 ************************************************************
 
 ************************************************************
  Patch-wise Printout from GXYPLS
Variable= Sk.Fr.Co, at patch named: OB3      and  IX=     1
 IY=    28  4.764E-03  5.338E-03  5.301E-03  5.291E-03  5.296E-03
 IZ=          1         81        161        241        321
 
 ************************************************************
 
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 05:26:51 on Monday, 24 November 2025                           
 Run completed at 05:27:52 on Monday, 24 November 2025                         
 CPU time of run 63 s
 This includes 63 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 6.669E-07
 ************************************************************
