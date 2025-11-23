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
 Number used before BFC allowance is                         584704
 Number used after BFC allowance is                          584704
 ************************************************************
 
  Standard k-e model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.44 C2E =1.92
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     1.97509875000005       at:
 ix = 1 iy = 40 iz = 179
 xg =0.26 yg =0.049375 zg =5.950001
 smallest cell volume divided by average is   2.499899999999937E-002  at:
 ix = 1 iy = 1 iz = 180
 xg =0.26 yg =6.25E-04 zg =5.983334
 ratio of smallest to biggest is   1.265708866455345E-002
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
 NY = 40
 YVLAST =0.05
 YFRAC(1)=0.025 ;YFRAC(9)=0.225
 YFRAC(17)=0.425 ;YFRAC(25)=0.625
 YFRAC(33)=0.825
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 300
 ZWLAST =10.
 ZFRAC(1)=3.333334E-03 ;ZFRAC(61)=0.203333
 ZFRAC(121)=0.403333 ;ZFRAC(181)=0.603333
 ZFRAC(241)=0.803333
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
 PATCH(OB1 ,LOW , 1, 1, 1, 40, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,748.6725 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.75 )
 COVAL(OB1 ,KE ,0. ,5.625E-17 )
 COVAL(OB1 ,EP ,0. ,1.386463E-23 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 40, 300, 300, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 COVAL(OB2 ,KE ,0. , SAME )
 COVAL(OB2 ,EP ,0. , SAME )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 40, 40, 1, 300, 1, 1)
 COVAL(OB3 ,W1 , GRND2 ,0. )
 COVAL(OB3 ,KE , GRND2 , GRND2 )
 COVAL(OB3 ,EP , GRND2 , GRND2 )
 
 PATCH(KESOURCE,PHASEM, 1, 1, 1, 40, 1, 300, 1, 1)
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
 IXMON = 1 ;IYMON = 34 ;IZMON = 28
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 3000 ;NUMCLS = 5
 NYPRIN = 8 ;IYPRF = 1 ;IYPRL = 40
 NZPRIN = 60 ;IZPRF = 1 ;IZPRL = 10000
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
    6.250E-04   1.062E-02   2.062E-02   3.062E-02   4.063E-02

 Z-coordinates of the cell centres
    1.667E-02   2.017E+00   4.017E+00   6.017E+00   8.017E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    1.250E-03   1.125E-02   2.125E-02   3.125E-02   4.125E-02

 Z-coordinates of the (higher) cell faces
    3.333E-02   2.033E+00   4.033E+00   6.033E+00   8.033E+00

 
 Total number of F-array elements used is                    587316
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep  2425 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 2426
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 2426
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     9.934E-01   8.958E-12      8.899E-12
     V1     1.211E+00   3.340E-07      4.046E-07
     W1     1.211E+00   9.917E-06      1.201E-05
     KE     1.597E-01   4.317E-07      6.893E-08
     EP     2.410E+00   8.542E-08      2.059E-07
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.261E-05   5.432E+02      5.230E-01 (    1,   40,  248)
     V1     3.032E-09   1.961E-03     -3.251E-03 (    1,   18,  209)
     W1     1.420E-07   9.302E-01      4.566E-01 (    1,    1,  227)
     KE     2.857E-09   8.290E-03      1.000E-10 (    1,   19,  243)
     EP     1.116E-08   4.839E-01      1.000E-10 (    1,   39,  219)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-3.432528E-04
 pos. sum=0. neg. sum=-3.432528E-04
 nett sum=-3.432528E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 3.649760E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.716680E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-3.452536E-01
 pos. sum=0.364976 neg. sum=-0.716922
 nett sum=-0.351946
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 4.866346E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-4.866346E-01 (Mass Out -4.866346E-01 In 0.000000E+00)
 pos. sum=0.486635 neg. sum=-0.486635
 nett sum=2.164935E-15
 
 Nett source of KE   at patch named: OB1      (INLE1       ) = 2.737320E-17 (Average  5.625000E-17)
 Nett source of KE   at patch named: OB2      (OUTL2       ) =-1.462038E-03 (Ave Out  3.004384E-03 In  0.000000E+00)
 Nett source of KE   at patch named: OB3      (PLAT3       ) = 2.967830E-15
 Nett source of KE   at patch named: KESOURCE                =-7.822006E-02
 Non-linearised source for KE    at: KESOURCE                = 7.915373E-02
 pos. sum=0.079154 neg. sum=-0.079682
 nett sum=-5.283706E-04
 
 Nett source of EP   at patch named: OB1      (INLE1       ) = 6.747009E-24 (Average  1.386463E-23)
 Nett source of EP   at patch named: OB2      (OUTL2       ) =-8.593048E-03 (Ave Out  1.765811E-02 In  0.000000E+00)
 Nett source of EP   at patch named: OB3      (PLAT3       ) = 1.907391E-13
 Nett source of EP   at patch named: KESOURCE                =-1.343901E+00
 Non-linearised source for EP    at: KESOURCE                = 1.037284E+00
 pos. sum=1.037284 neg. sum=-1.352494
 nett sum=-0.31521
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  2426
    Variable      Inflow        Outflow       Nett
       P1       4.866346E-01 -4.866346E-01  2.164935E-15
       V1       0.000000E+00 -3.432528E-04 -3.432528E-04
       W1       3.649760E-01 -7.169216E-01 -3.519456E-01
       KE       7.915373E-02 -7.968210E-02 -5.283706E-04
       EP       1.037284E+00 -1.352494E+00 -3.152098E-01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 34 IZMON= 28 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   0.0000E+00   9.9999E-11   1.0000E-10   1.0000E-10   1.0000E-10
    151   3.8122E+02  -1.0526E-04   7.2115E-01   2.6430E-03   1.2443E-02
    301   4.6768E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
    451   4.7161E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
    601   4.7698E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
    751   4.7870E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
    901   4.7905E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   1051   4.7909E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   1201   4.7907E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   1351   4.7905E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   1501   4.7904E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   1651   4.7903E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   1801   4.7903E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   1951   4.7903E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   2101   4.7903E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   2251   4.7903E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   2401   4.7903E+02  -2.2719E-04   7.1804E-01   2.6727E-03   1.2583E-02
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval=  0.000E+00 -2.272E-04  1.000E-10  1.000E-10  1.000E-10
     Maxval=  4.791E+02  1.000E-10  7.211E-01  2.673E-03  1.258E-02
     Cellav=  4.439E+02 -2.067E-04  6.760E-01  2.514E-03  1.183E-02
 1.00 2..5.+5..5+..5.+5..5+.5..5..5.+5..5+..5.+5..5+.5..5
      .                                                 .
 0.90 +                                                 +
      .                                                 .
 0.80 +  1                                              +
      .                                                 .
 0.70 +                                                 +
      .                                                 .
 0.60 +                                                 +
      .  2                                              .
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
 0.00 5....+2..2+..2.+2..2+.2..2..2.+2..2+..2.+2..2+.2..2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 2.40E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   1.1000E+00   4.6259E-11   2.4913E-01   6.0307E-10   1.1186E-09
    151   2.6922E-07   2.7249E-04   1.6592E-01   1.7917E-02   3.3924E-03
    301   2.9334E-08   1.9049E-04   3.4781E-02   7.2338E-03   9.1742E-04
    451   1.0442E-08   8.9661E-05   1.2406E-02   9.0207E-04   1.7797E-04
    601   3.7080E-09   5.6807E-05   5.5260E-03   4.8963E-04   8.3648E-05
    751   1.4792E-09   3.8713E-05   2.4001E-03   2.3571E-04   3.2695E-05
    901   6.8964E-10   2.5494E-05   1.1788E-03   8.9475E-05   1.3365E-05
   1051   3.4609E-10   1.6760E-05   6.8495E-04   4.0127E-05   6.8939E-06
   1201   1.7495E-10   1.1015E-05   4.1379E-04   2.4002E-05   4.1417E-06
   1351   1.0743E-10   7.2112E-06   2.5210E-04   1.4831E-05   2.5316E-06
   1501   8.3228E-11   4.6978E-06   1.5650E-04   8.9542E-06   1.5345E-06
   1651   6.3475E-11   3.0542E-06   9.9449E-05   5.3181E-06   9.3900E-07
   1801   4.5335E-11   1.9895E-06   6.3810E-05   3.1875E-06   5.8397E-07
   1951   3.1049E-11   1.2983E-06   4.1017E-05   1.9476E-06   3.6735E-07
   2101   2.0849E-11   8.4755E-07   2.6314E-05   1.2071E-06   2.3211E-07
   2251   1.3984E-11   5.5254E-07   1.6819E-05   7.5181E-07   1.4661E-07
   2401   9.5244E-12   3.5904E-07   1.0698E-05   4.6753E-07   9.2303E-08
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval= -2.538E+01 -2.380E+01 -1.145E+01 -2.123E+01 -2.061E+01
     Maxval=  9.531E-02 -8.208E+00 -1.390E+00 -4.022E+00 -5.686E+00
 1.00 3..5.+2...+....+....+....+....+....+....+....+....+
      .  3  4  2                                        .
 0.90 +     5      2                                    +
      .        4      2  2                              .
 0.80 +     3  5   4        2  2                        +
      .            5  4           2  2                  .
 0.70 +        3      5  4              2   2           +
      .                  5  4                  2  2     .
 0.60 +            3        5  4  4                  2  +
      .               3        5     4  4               2
 0.50 +                           5  5      4           +
      .                  3              5      4  4     .
 0.40 +  1                  3               5  5     4  4
      .                        3                  5  5  .
 0.30 +     1                     3                     5
      .        1   1                 3                  .
 0.20 +               1                 3   3           +
      .                  1  1                  3        .
 0.10 +                        1  1  1            3     +
      .                                 1   1  1  1  3  .
 0.00 5....+....+....+....+....+....+....+....+....+.1..3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 2.40E+03
 
 ************************************************************
 
 ************************************************************
  Patch-wise Printout from GXYPLS
Variable= Sk.Fr.Co, at patch named: OB3      and  IX=     1
 IY=    40  5.382E-03  6.077E-03  6.026E-03  6.033E-03  6.033E-03
 IZ=          1         61        121        181        241
 
 ************************************************************
 
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 09:56:56 on Sunday, 23 November 2025                           
 Run completed at 09:58:14 on Sunday, 23 November 2025                         
 CPU time of run 79 s
 This includes 79 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 5.427E-07
 ************************************************************
