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
 Number used before BFC allowance is                        2260993
 Number used after BFC allowance is                         2260993
 ************************************************************
 
  Standard k-e model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.44 C2E =1.92
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     7.67150799479975       at:
 ix = 1 iy = 117 iz = 202
 xg =0.26 yg =0.049166 zg =4.03
 smallest cell volume divided by average is   8.124888200383968E-003  at:
 ix = 1 iy = 1 iz = 113
 xg =0.26 yg =2.083319E-04 zg =2.25
 ratio of smallest to biggest is   1.059099228716381E-003
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
 NY = 117
 YVLAST =0.05
 YFRAC(1)=8.333276E-03 ;YFRAC(24)=0.199999
 YFRAC(47)=0.391664 ;YFRAC(70)=0.583329
 YFRAC(93)=0.774995 ;YFRAC(116)=0.96666
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
 PATCH(OB1 ,LOW , 1, 1, 1, 117, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,748.6725 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.75 )
 COVAL(OB1 ,KE ,0. ,5.625E-17 )
 COVAL(OB1 ,EP ,0. ,1.386463E-23 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 117, 400, 400, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 COVAL(OB2 ,KE ,0. , SAME )
 COVAL(OB2 ,EP ,0. , SAME )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 117, 117, 1, 400, 1, 1)
 COVAL(OB3 ,W1 , GRND2 ,0. )
 COVAL(OB3 ,KE , GRND2 , GRND2 )
 COVAL(OB3 ,EP , GRND2 , GRND2 )
 
 PATCH(KESOURCE,PHASEM, 1, 1, 1, 117, 1, 400, 1, 1)
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
 IXMON = 1 ;IYMON = 106 ;IZMON = 393
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 10000 ;NUMCLS = 5
 NYPRIN = 23 ;IYPRF = 1 ;IYPRL = 117
 NZPRIN = 80 ;IZPRF = 1 ;IZPRL = 10000
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
    2.083E-04   9.792E-03   1.937E-02   2.896E-02   3.854E-02
    4.812E-02
 Z-coordinates of the cell centres
    1.000E-02   1.610E+00   3.210E+00   4.810E+00   6.410E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    4.167E-04   1.000E-02   1.958E-02   2.917E-02   3.875E-02
    4.833E-02
 Z-coordinates of the (higher) cell faces
    2.000E-02   1.620E+00   3.220E+00   4.820E+00   6.420E+00

 
 Total number of F-array elements used is                   2264790
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 *** End of sweep 10000
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 10000
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     9.930E-01   6.325E-12      6.281E-12
     V1     1.113E+00   6.679E-06      7.433E-06
     W1     1.113E+00   1.456E-04      1.621E-04
     KE     1.067E-01   1.672E-06      1.784E-07
     EP     1.361E+00   3.438E-07      4.681E-07
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     3.416E-05   4.344E+02      5.117E-01 (    1,  117,  227)
     V1     1.108E-08   1.639E-03     -3.189E-03 (    1,   55,  232)
     W1     3.875E-07   9.292E-01      4.783E-01 (    1,    1,  215)
     KE     6.979E-09   8.354E-03      1.000E-10 (    1,   57,  227)
     EP     3.441E-08   3.671E-01      1.000E-10 (    1,  116,  247)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-2.390212E-04
 pos. sum=0. neg. sum=-2.390212E-04
 nett sum=-2.390212E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 3.649760E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.717248E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-2.742237E-01
 pos. sum=0.364976 neg. sum=-0.645949
 nett sum=-0.280973
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 4.866346E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-4.866346E-01 (Mass Out -4.866346E-01 In 0.000000E+00)
 pos. sum=0.486635 neg. sum=-0.486635
 nett sum=3.863576E-14
 
 Nett source of KE   at patch named: OB1      (INLE1       ) = 2.737320E-17 (Average  5.625000E-17)
 Nett source of KE   at patch named: OB2      (OUTL2       ) =-1.434722E-03 (Ave Out  2.948254E-03 In  0.000000E+00)
 Nett source of KE   at patch named: OB3      (PLAT3       ) = 5.482819E-16
 Nett source of KE   at patch named: KESOURCE                =-5.214614E-02
 Non-linearised source for KE    at: KESOURCE                = 5.254474E-02
 pos. sum=0.052545 neg. sum=-0.053581
 nett sum=-1.036117E-03
 
 Nett source of EP   at patch named: OB1      (INLE1       ) = 6.747009E-24 (Average  1.386463E-23)
 Nett source of EP   at patch named: OB2      (OUTL2       ) =-7.738255E-03 (Ave Out  1.590157E-02 In  0.000000E+00)
 Nett source of EP   at patch named: OB3      (PLAT3       ) = 2.632430E-14
 Nett source of EP   at patch named: KESOURCE                =-7.626348E-01
 Non-linearised source for EP    at: KESOURCE                = 5.800269E-01
 pos. sum=0.580027 neg. sum=-0.770373
 nett sum=-0.190346
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep 10000
    Variable      Inflow        Outflow       Nett
       P1       4.866346E-01 -4.866346E-01  3.863576E-14
       V1       0.000000E+00 -2.390212E-04 -2.390212E-04
       W1       3.649760E-01 -6.459485E-01 -2.809725E-01
       KE       5.254474E-02 -5.358086E-02 -1.036117E-03
       EP       5.800269E-01 -7.703730E-01 -1.903461E-01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 106 IZMON= 393 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   0.0000E+00   9.9999E-11   1.0000E-10   1.0000E-10   1.0000E-10
    501   7.8560E+00   7.8122E-08   6.9803E-01   3.1938E-03   1.8237E-02
   1001   8.3126E+00  -4.1043E-07   6.8756E-01   3.5256E-03   1.8773E-02
   1501   8.1149E+00  -8.2598E-07   6.8492E-01   3.6479E-03   1.8923E-02
   2001   8.0119E+00  -7.4042E-07   6.8408E-01   3.7039E-03   1.8964E-02
   2501   7.9580E+00  -5.2832E-07   6.8384E-01   3.7313E-03   1.8974E-02
   3001   7.9298E+00  -3.1376E-07   6.8380E-01   3.7453E-03   1.8975E-02
   3501   7.9151E+00  -1.3190E-07   6.8383E-01   3.7528E-03   1.8974E-02
   4001   7.9079E+00   1.0425E-08   6.8387E-01   3.7568E-03   1.8973E-02
   4501   7.9046E+00   1.1697E-07   6.8391E-01   3.7590E-03   1.8971E-02
   5001   7.9034E+00   1.9505E-07   6.8395E-01   3.7601E-03   1.8970E-02
   5501   7.9033E+00   2.5222E-07   6.8397E-01   3.7607E-03   1.8969E-02
   6001   7.9035E+00   2.9478E-07   6.8399E-01   3.7610E-03   1.8969E-02
   6501   7.9040E+00   3.2747E-07   6.8401E-01   3.7612E-03   1.8968E-02
   7001   7.9044E+00   3.5364E-07   6.8402E-01   3.7613E-03   1.8968E-02
   7501   7.9047E+00   3.7551E-07   6.8402E-01   3.7613E-03   1.8968E-02
   8001   7.9050E+00   3.9455E-07   6.8403E-01   3.7614E-03   1.8968E-02
   8501   7.9052E+00   4.1171E-07   6.8403E-01   3.7614E-03   1.8968E-02
   9001   7.9054E+00   4.2759E-07   6.8404E-01   3.7614E-03   1.8968E-02
   9501   7.9055E+00   4.4257E-07   6.8404E-01   3.7615E-03   1.8968E-02
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval=  0.000E+00 -8.260E-07  1.000E-10  1.000E-10  1.000E-10
     Maxval=  8.313E+00  4.426E-07  6.980E-01  3.761E-03  1.897E-02
     Cellav=  7.548E+00  3.649E-08  6.507E-01  3.521E-03  1.797E-02
 1.00 +..3.5..5.+5.5.+5.5.+5..5+5..5+.5.5+.5.5+.5..5.5..5
      .  5 4  4  1 1  1 1  1  1 1  1  1 1  2 2  2  1 1  1
 0.90 +                               2 2               +
      .  4                         2                    .
 0.80 +                         2                       +
      .                       2                         .
 0.70 +  2                                              +
      2                    2                            .
 0.60 +                                                 +
      .                 2                               .
 0.50 +                                                 +
      .                                                 .
 0.40 +               2                                 +
      .    2                                            .
 0.30 +                                                 +
      .            2                                    .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .          2                                      .
 0.00 5....+..2.+....+....+....+....+....+....+....+....+
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.50E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   1.1000E+00   4.6271E-11   2.4913E-01   4.8251E-10   8.8794E-10
    501   4.7027E-08   5.2465E-04   1.7599E-01   8.0435E-03   1.6635E-03
   1001   1.2972E-08   3.3356E-04   7.9911E-02   3.2276E-03   4.9785E-04
   1501   5.8901E-09   1.7711E-04   4.1785E-02   1.4405E-03   1.9953E-04
   2001   3.1411E-09   1.2577E-04   2.3644E-02   7.3629E-04   9.4797E-05
   2501   1.8232E-09   9.7031E-05   1.4117E-02   4.0757E-04   5.0115E-05
   3001   1.1130E-09   7.8153E-05   8.7652E-03   2.3695E-04   2.8309E-05
   3501   6.9966E-10   6.4604E-05   5.5899E-03   1.4251E-04   1.6824E-05
   4001   4.4672E-10   5.4085E-05   3.6322E-03   8.7519E-05   1.0395E-05
   4501   2.8754E-10   4.5519E-05   2.3995E-03   5.4416E-05   6.6282E-06
   5001   1.8610E-10   3.8369E-05   1.6179E-03   3.4213E-05   4.3473E-06
   5501   1.2117E-10   3.2335E-05   1.1246E-03   2.1791E-05   2.9328E-06
   6001   7.9628E-11   2.7228E-05   8.1242E-04   1.4136E-05   2.0452E-06
   6501   5.3030E-11   2.2888E-05   6.0726E-04   9.4198E-06   1.4844E-06
   7001   3.6011E-11   1.9232E-05   4.6782E-04   6.5198E-06   1.1199E-06
   7501   2.5055E-11   1.6141E-05   3.7030E-04   4.7387E-06   8.7760E-07
   8001   1.7944E-11   1.3539E-05   3.0075E-04   3.6454E-06   7.1000E-07
   8501   1.3254E-11   1.1349E-05   2.4829E-04   2.9279E-06   5.8521E-07
   9001   1.0095E-11   9.5116E-06   2.0689E-04   2.4050E-06   4.8768E-07
   9501   7.8987E-12   7.9696E-06   1.7331E-04   1.9993E-06   4.0880E-07
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval= -2.556E+01 -2.380E+01 -8.660E+00 -2.145E+01 -2.084E+01
     Maxval=  9.531E-02 -7.553E+00 -1.390E+00 -4.823E+00 -6.399E+00
 1.00 3..5.+....+....+....+....+....+....+....+....+....+
      .  3 4  2                                         .
 0.90 +    5  4  2 2  2                                 +
      .    3  5  4      2  2  2 2  2                    .
 0.80 +          5 4  4               2 2  2 2          +
      .       3    5    4  4                    2  2 2  2
 0.70 +          3    5 5     4                         +
      .                    5    4  4                    .
 0.60 +            3          5 5     4 4               +
      .               3            5  5    4 4  4       .
 0.50 +                 3               5  5 5     4 4  4
      .                                         5  5 5  .
 0.40 +                    3                            5
      .  1                    3                         .
 0.30 +    1                    3                       +
      .       1  1                 3                    .
 0.20 +            1  1               3                 +
      .                 1  1  1         3  3            .
 0.10 +                         1  1  1      3  3       +
      .                                 1  1 1  1  3    .
 0.00 5....+....+....+....+....+....+....+....+....1.3..3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.50E+03
 
 ************************************************************
 
 ************************************************************
  Patch-wise Printout from GXYPLS
Variable= Sk.Fr.Co, at patch named: OB3      and  IX=     1
 IY=   117  4.862E-03  5.484E-03  5.444E-03  5.435E-03  5.439E-03
 IZ=          1         81        161        241        321
 
 ************************************************************
 
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 06:58:51 on Monday, 24 November 2025                           
 Run completed at 07:12:02 on Monday, 24 November 2025                         
 CPU time of run 791 s
 This includes 791 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 3.380E-07
 ************************************************************
