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
 Number used before BFC allowance is                         574319
 Number used after BFC allowance is                          574319
 ************************************************************
 
  Standard k-e model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.44 C2E =1.92
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     3.86853821959989       at:
 ix = 1 iy = 59 iz = 7
 xg =0.26 yg =0.049167 zg =0.26
 smallest cell volume divided by average is   1.638865944524664E-002  at:
 ix = 1 iy = 1 iz = 113
 xg =0.26 yg =4.166637E-04 zg =4.5
 ratio of smallest to biggest is   4.236395898123417E-003
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
 NZ = 200
 ZWLAST =8.
 ZFRAC(1)=5.0E-03 ;ZFRAC(41)=0.205
 ZFRAC(81)=0.405 ;ZFRAC(121)=0.605
 ZFRAC(161)=0.805
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
 PATCH(OB2 ,HIGH , 1, 1, 1, 59, 200, 200, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 COVAL(OB2 ,KE ,0. , SAME )
 COVAL(OB2 ,EP ,0. , SAME )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 59, 59, 1, 200, 1, 1)
 COVAL(OB3 ,W1 , GRND2 ,0. )
 COVAL(OB3 ,KE , GRND2 , GRND2 )
 COVAL(OB3 ,EP , GRND2 , GRND2 )
 
 PATCH(KESOURCE,PHASEM, 1, 1, 1, 59, 1, 200, 1, 1)
 COVAL(KESOURCE,KE , GRND4 , GRND4 )
 COVAL(KESOURCE,EP , GRND4 , GRND4 )
 XCYCLE = F
 EGWF = F
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 10000 ;ISWC1 = 1
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
 IXMON = 1 ;IYMON = 53 ;IZMON = 197
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 10000 ;NUMCLS = 5
 NYPRIN = 11 ;IYPRF = 1 ;IYPRL = 59
 NZPRIN = 40 ;IZPRF = 1 ;IZPRL = 10000
 XZPR = F ;YZPR = T
 IPLTF = 1 ;IPLTL = 10000 ;NPLT = 500
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
    2.000E-02   1.620E+00   3.220E+00   4.820E+00   6.420E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    8.333E-04   1.000E-02   1.917E-02   2.833E-02   3.750E-02
    4.667E-02
 Z-coordinates of the (higher) cell faces
    4.000E-02   1.640E+00   3.240E+00   4.840E+00   6.440E+00

 
 Total number of F-array elements used is                    576226
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep  4457 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 4458
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 4458
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     9.934E-01   7.372E-12      7.323E-12
     V1     1.114E+00   3.843E-07      4.281E-07
     W1     1.114E+00   9.952E-06      1.109E-05
     KE     1.089E-01   2.137E-07      2.328E-08
     EP     1.391E+00   5.059E-08      7.036E-08
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.086E-05   4.337E+02      5.408E-01 (    1,   59,  169)
     V1     1.721E-09   1.966E-03     -3.006E-03 (    1,   27,  170)
     W1     9.605E-08   9.285E-01      4.794E-01 (    1,    1,  159)
     KE     1.768E-09   7.847E-03      1.000E-10 (    1,   29,  168)
     EP     5.637E-09   3.342E-01      1.000E-10 (    1,   58,  180)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-3.670800E-04
 pos. sum=0. neg. sum=-3.6708E-04
 nett sum=-3.6708E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 3.649760E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.714151E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-2.743665E-01
 pos. sum=0.364976 neg. sum=-0.645782
 nett sum=-0.280806
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 4.866346E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-4.866346E-01 (Mass Out -4.866346E-01 In 0.000000E+00)
 pos. sum=0.486635 neg. sum=-0.486635
 nett sum=-2.281508E-14
 
 Nett source of KE   at patch named: OB1      (INLE1       ) = 2.737320E-17 (Average  5.625000E-17)
 Nett source of KE   at patch named: OB2      (OUTL2       ) =-1.446572E-03 (Ave Out  2.972604E-03 In  0.000000E+00)
 Nett source of KE   at patch named: OB3      (PLAT3       ) =-1.687043E-15
 Nett source of KE   at patch named: KESOURCE                =-5.317679E-02
 Non-linearised source for KE    at: KESOURCE                = 5.375943E-02
 pos. sum=0.053759 neg. sum=-0.054623
 nett sum=-8.639277E-04
 
 Nett source of EP   at patch named: OB1      (INLE1       ) = 6.747009E-24 (Average  1.386463E-23)
 Nett source of EP   at patch named: OB2      (OUTL2       ) =-8.013023E-03 (Ave Out  1.646620E-02 In  0.000000E+00)
 Nett source of EP   at patch named: OB3      (PLAT3       ) =-8.092125E-14
 Nett source of EP   at patch named: KESOURCE                =-7.757323E-01
 Non-linearised source for EP    at: KESOURCE                = 5.950398E-01
 pos. sum=0.59504 neg. sum=-0.783745
 nett sum=-0.188706
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  4458
    Variable      Inflow        Outflow       Nett
       P1       4.866346E-01 -4.866346E-01 -2.281508E-14
       V1       0.000000E+00 -3.670800E-04 -3.670800E-04
       W1       3.649760E-01 -6.457816E-01 -2.808056E-01
       KE       5.375943E-02 -5.462336E-02 -8.639277E-04
       EP       5.950398E-01 -7.837453E-01 -1.887055E-01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 53 IZMON= 197 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   0.0000E+00   9.9999E-11   1.0000E-10   1.0000E-10   1.0000E-10
    501   6.6209E+00   6.5408E-07   6.8618E-01   3.7492E-03   1.8887E-02
   1001   6.5949E+00   7.4819E-07   6.8653E-01   3.7848E-03   1.8808E-02
   1501   6.5996E+00   9.9540E-07   6.8665E-01   3.7834E-03   1.8793E-02
   2001   6.5995E+00   1.1722E-06   6.8664E-01   3.7835E-03   1.8793E-02
   2501   6.5987E+00   1.3028E-06   6.8664E-01   3.7840E-03   1.8794E-02
   3001   6.5981E+00   1.3989E-06   6.8663E-01   3.7845E-03   1.8795E-02
   3501   6.5979E+00   1.4747E-06   6.8663E-01   3.7848E-03   1.8796E-02
   4001   6.5977E+00   1.5407E-06   6.8663E-01   3.7850E-03   1.8796E-02
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval=  0.000E+00  1.000E-10  1.000E-10  1.000E-10  1.000E-10
     Maxval=  6.621E+00  1.541E-06  6.866E-01  3.785E-03  1.889E-02
     Cellav=  5.867E+00  1.032E-06  6.103E-01  3.360E-03  1.672E-02
 1.00 +....+5...+..5.+...5+....5....+5...+..5.+...5+....5
      .                                           2     .
 0.90 +                                     2           +
      .                              2                  .
 0.80 +                                                 +
      .                        2                        .
 0.70 +                                                 +
      .                  2                              .
 0.60 +                                                 +
      .                                                 .
 0.50 +            2                                    +
      .                                                 .
 0.40 +     2                                           +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 5....+....+....+....+....+....+....+....+....+....+
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 4.00E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   1.1000E+00   4.6008E-11   2.4913E-01   4.8251E-10   8.8794E-10
    501   1.2922E-08   1.5904E-04   2.8105E-02   2.1874E-03   3.1422E-04
   1001   1.4980E-09   6.1596E-05   3.6101E-03   1.5486E-04   2.5058E-05
   1501   2.3614E-10   3.0106E-05   8.8437E-04   2.5259E-05   5.4174E-06
   2001   7.9789E-11   1.4759E-05   3.9379E-04   1.0510E-05   2.2504E-06
   2501   4.2919E-11   7.1699E-06   1.9365E-04   4.9158E-06   1.0698E-06
   3001   2.3865E-11   3.4788E-06   9.3867E-05   2.3090E-06   5.1099E-07
   3501   1.3914E-11   1.6776E-06   4.4674E-05   1.0676E-06   2.4008E-07
   4001   8.9548E-12   7.9231E-07   2.0762E-05   4.7466E-07   1.0903E-07
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval= -2.544E+01 -2.380E+01 -1.078E+01 -2.145E+01 -2.084E+01
     Maxval=  9.531E-02 -8.746E+00 -1.390E+00 -6.125E+00 -8.065E+00
 1.00 3....+5...+....+....+....+....+....+....+....+....+
      .            2                                    .
 0.90 +                  2                              +
      .            4           2                        .
 0.80 +            5                 2                  +
      .     3                               2           .
 0.70 +                  5                        2     +
      .                        4                        2
 0.60 +                        5     4                  +
      .            3                 5      4           .
 0.50 +                                     5     4     +
      .                                           5     4
 0.40 +                  3                              5
      .                                                 .
 0.30 +     1                  3                        +
      .                              3                  .
 0.20 +            1                                    +
      .                  1                  3           .
 0.10 +                        1                  3     +
      .                              1      1           .
 0.00 5....+....+....+....+....+....+....+....+...1+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 4.00E+03
 
 ************************************************************
 
 ************************************************************
  Patch-wise Printout from GXYPLS
Variable= Sk.Fr.Co, at patch named: OB3      and  IX=     1
 IY=    59  4.914E-03  5.480E-03  5.440E-03  5.431E-03  5.435E-03
 IZ=          1         41         81        121        161
 
 ************************************************************
 
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 06:54:31 on Monday, 24 November 2025                           
 Run completed at 06:56:25 on Monday, 24 November 2025                         
 CPU time of run 116 s
 This includes 116 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 4.410E-07
 ************************************************************
