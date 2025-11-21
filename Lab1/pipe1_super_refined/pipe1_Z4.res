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
 >>>   End of property-related data   <<<
 ************************************************************
 
 Number of F-array locations available is                  10000000
 Number used before BFC allowance is                         200352
 Number used after BFC allowance is                          200352
 biggest cell volume divided by average is     1.90000000000002       at:
 ix = 1 iy = 10 iz = 10
 xg =0.26 yg =0.07125 zg =0.076
 smallest cell volume divided by average is   9.999999999999534E-002  at:
 ix = 1 iy = 1 iz = 282
 xg =0.26 yg =3.75E-03 zg =2.252
 ratio of smallest to biggest is   5.263157894736550E-002
 ************************************************************
 
 -------- Recommended settings -------
 CONWIZ=T activates settings based on
 refrho =1. refvel =10. reflen =1. reftemp =50.
 rlxdu1 =0.5 rlxdv1 =0.5 rlxdw1 =0.5
 Maximum change of V1   per sweep=   100.000000000000     
 Maximum change of W1   per sweep=   100.000000000000     
 relaxation and min/max values left at
 defaults may have been changed
 
 ************************************************************
 SParsol activated
 ************************************************************
  Group 1. Run Title and Number
 ************************************************************
 ************************************************************
 
 TEXT(Lab1                                    )
 
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
 NY = 10
 YVLAST =0.075
 YFRAC(1)=0.1 ;YFRAC(3)=0.3
 YFRAC(5)=0.5 ;YFRAC(7)=0.7
 YFRAC(9)=0.9
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 500
 ZWLAST =4.
 ZFRAC(1)=2.0E-03 ;ZFRAC(101)=0.202
 ZFRAC(201)=0.402 ;ZFRAC(301)=0.602
 ZFRAC(401)=0.802
 ************************************************************
  Group 6. Body-Fitted Coordinates
 ************************************************************
  Group 7. Variables: STOREd,SOLVEd,NAMEd
 ONEPHS = T
 NAME(1)=P1 ;NAME(5)=V1
 NAME(7)=W1 ;NAME(148)=DEN1
 NAME(150)=DWDY
    * Y in SOLUTN argument list denotes:
    * 1-stored 2-solved 3-whole-field
    * 4-point-by-point 5-explicit 6-harmonic averaging 
 SOLUTN(P1,Y,Y,Y,N,N,Y)
 SOLUTN(V1,Y,Y,Y,N,N,Y)
 SOLUTN(W1,Y,Y,Y,N,N,Y)
 SOLUTN(DEN1,Y,N,N,N,N,Y)
 SOLUTN(DWDY,Y,N,N,N,N,Y)
 DEN1 = 148
 ************************************************************
  Group 8. Terms & Devices
    * Y in TERMS argument list denotes:
    * 1-built-in source 2-convection 3-diffusion 4-transient
    * 5-first phase variable 6-interphase transport         
 TERMS(P1,Y,Y,Y,N,Y,N)
 TERMS(V1,Y,Y,Y,N,Y,N)
 TERMS(W1,Y,Y,Y,N,Y,N)
 DIFCUT =0.5 ;ZDIFAC =1.
 GALA = F ;ADDDIF = T
 ISOLX = 0 ;ISOLY = -1 ;ISOLZ = -1
 ************************************************************
  Group 9. Properties used if PRPS is not
  stored, and where PRPS = -1.0 if it is!
 RHO1 =910. ;TMP1 =0. ;EL1 =0.
 TSURR =0. ;TEMP0 =273.15 ;PRESS0 =1.01325E+05
 DVO1DT =3.41E-03 ;DRH1DP =0.
 EMISS =0. ;SCATT =0.
 RADIA =0. ;RADIB =0.
 ENUL =3.5E-04 ;ENUT =0.
 PRNDTL(V1)=1. ;PRNDTL(W1)=1.
 PRT(V1)=1. ;PRT(W1)=1.
 CP1 =1005. ;CP2 =1.
 ************************************************************
  Group 10.Inter-Phase Transfer Processes
 ************************************************************
  Group 11.Initial field variables (PHIs)
 FIINIT(P1)=0. ;FIINIT(V1)=1.0E-10
 FIINIT(W1)=1.0E-10 ;FIINIT(DEN1)=910.
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
 PATCH(OB1 ,LOW , 1, 1, 1, 10, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,409.5 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.45 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 10, 500, 500, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 10, 10, 1, 500, 1, 1)
 COVAL(OB3 ,W1 ,1. ,0. )
 XCYCLE = F
 EGWF = F
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 1000 ;ISWC1 = 1
 LITHYD = 1 ;LITFLX = 1 ;LITC = 1 ;ITHC1 = 1
 SELREF = T
 RESFAC =1.0E-05
 ************************************************************
  Group 16. Terminate Iterations
 LITER(P1)=200 ;LITER(V1)=10
 LITER(W1)=10
 ENDIT(P1)=1.0E-03 ;ENDIT(V1)=1.0E-03
 ENDIT(W1)=1.0E-03
 ************************************************************
  Group 17. Relaxation
 RELAX(P1,LINRLX,0.5)
 RELAX(V1,LINRLX,0.5)
 RELAX(W1,LINRLX,0.5)
 RELAX(DEN1,LINRLX,0.5)
 RELAX(DWDY,LINRLX,1.)
 OVRRLX =0.
 EXPERT = F ;NNORSL = F
 ************************************************************
  Group 18. Limits
 VARMAX(P1)=1.0E+10 ;VARMIN(P1)=-1.0E+10
 VARMAX(V1)=1.0E+06 ;VARMIN(V1)=-1.0E+06
 VARMAX(W1)=1.0E+06 ;VARMIN(W1)=-1.0E+06
 VARMAX(DEN1)=1.0E+10 ;VARMIN(DEN1)=1.0E-06
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
 OUTPUT(DEN1,N,N,Y,N,N,N)
 OUTPUT(DWDY,N,N,Y,N,N,N)
 ************************************************************
  Group 22. Monitor Print-Out
 IXMON = 1 ;IYMON = 7 ;IZMON = 122
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 1000 ;NUMCLS = 5
 NYPRIN = 2 ;IYPRF = 1 ;IYPRL = 10
 NZPRIN = 100 ;IZPRF = 1 ;IZPRL = 10000
 XZPR = F ;YZPR = T
 IPLTF = 1 ;IPLTL = 1000 ;NPLT = 50
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
    3.750E-03   1.875E-02   3.375E-02   4.875E-02   6.375E-02

 Z-coordinates of the cell centres
    4.000E-03   8.040E-01   1.604E+00   2.404E+00   3.204E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    7.500E-03   2.250E-02   3.750E-02   5.250E-02   6.750E-02

 Z-coordinates of the (higher) cell faces
    8.000E-03   8.080E-01   1.608E+00   2.408E+00   3.208E+00

 
 Total number of F-array elements used is                    201413
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 *** End of sweep 1000
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 1000
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.285E+00   1.609E-09      2.068E-09
     V1     2.421E+00   2.363E-06      5.719E-06
     W1     2.421E+00   6.593E-05      1.596E-04
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.109E-03   9.575E+02      8.292E-02 (    1,   10,  395)
     V1     4.091E-07   1.316E-03     -5.056E-02 (    1,    4,  381)
     W1     6.103E-06   8.906E-01      8.914E-02 (    1,    1,  407)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-4.106029E-04
 pos. sum=0. neg. sum=-4.106029E-04
 nett sum=-4.106029E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 2.695009E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.552798E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-1.270645E+00
 pos. sum=0.269501 neg. sum=-1.625924
 nett sum=-1.356424
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 5.988909E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-5.988909E-01 (Mass Out -5.988909E-01 In 0.000000E+00)
 pos. sum=0.598891 neg. sum=-0.598891
 nett sum=-3.574918E-14
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1000
    Variable      Inflow        Outflow       Nett
       P1       5.988909E-01 -5.988909E-01 -3.574918E-14
       V1       0.000000E+00 -4.106029E-04 -4.106029E-04
       W1       2.695009E-01 -1.625924E+00 -1.356424E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 7 IZMON= 122 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   9.9809E-11   1.0000E-10
     51   1.0242E+03   1.1584E-09   5.6636E-01
    101   8.1608E+02   6.9339E-08   5.6088E-01
    151   7.3548E+02   1.9060E-08   5.4814E-01
    201   6.9231E+02   1.0464E-08   5.3856E-01
    251   6.6596E+02  -1.9566E-08   5.3193E-01
    301   6.4880E+02  -2.2839E-05   5.2738E-01
    351   6.3762E+02  -4.0803E-04   5.2478E-01
    401   6.3072E+02  -4.1641E-04   5.2460E-01
    451   6.2621E+02  -4.1576E-04   5.2460E-01
    501   6.2326E+02  -4.1574E-04   5.2460E-01
    551   6.2133E+02  -4.1574E-04   5.2460E-01
    601   6.2008E+02  -4.1574E-04   5.2460E-01
    651   6.1926E+02  -4.1574E-04   5.2460E-01
    701   6.1873E+02  -4.1574E-04   5.2460E-01
    751   6.1840E+02  -4.1574E-04   5.2460E-01
    801   6.1819E+02  -4.1574E-04   5.2460E-01
    851   6.1806E+02  -4.1574E-04   5.2460E-01
    901   6.1797E+02  -4.1574E-04   5.2460E-01
    951   6.1793E+02  -4.1574E-04   5.2460E-01
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00 -4.164E-04  1.000E-10
     Maxval=  1.024E+03  6.934E-08  5.664E-01
     Cellav=  6.335E+02 -2.710E-04  5.047E-01
 1.00 2..3.3..2.+2.2.+....+....+....+....+....+....+....+
      .       3  3 3  3 3  3  3 3  3  3 3  3 3  3  3 3  3
 0.90 +                                                 +
      .                                                 .
 0.80 +    1                                            +
      .                                                 .
 0.70 +       1  1                                      +
      .            1  1                                 .
 0.60 +                 1  1  1 1  1  1 1  1 1  1  1 1  1
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
 0.00 3....+....+....+..2.+2..2+2..2+.2.2+.2.2+.2..2.2..2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   2.2482E-10   1.9679E-01
     51   3.1092E-06   1.7525E-03   3.4461E-01
    101   1.3690E-06   9.4856E-04   1.7875E-01
    151   7.4824E-07   5.8584E-04   1.0357E-01
    201   4.6481E-07   3.8840E-04   6.5033E-02
    251   3.0694E-07   2.6763E-04   4.2359E-02
    301   2.0792E-07   1.8870E-04   2.7857E-02
    351   1.4317E-07   1.3497E-04   1.8432E-02
    401   9.9644E-08   9.7418E-05   1.2233E-02
    451   6.9837E-08   7.0771E-05   8.1262E-03
    501   4.9176E-08   5.1612E-05   5.3939E-03
    551   3.4735E-08   3.7742E-05   3.5730E-03
    601   2.4589E-08   2.7649E-05   2.3594E-03
    651   1.7432E-08   2.0280E-05   1.5516E-03
    701   1.2372E-08   1.4893E-05   1.0151E-03
    751   8.7872E-09   1.0940E-05   6.5991E-04
    801   6.2444E-09   8.0395E-06   4.2572E-04
    851   4.4397E-09   5.9082E-06   2.7206E-04
    901   3.1576E-09   4.3441E-06   1.7183E-04
    951   2.2463E-09   3.1942E-06   1.0693E-04
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.991E+01 -2.222E+01 -9.143E+00
     Maxval=  9.531E-02 -6.347E+00 -1.065E+00
 1.00 1..3.+....+....+....+....+....+....+....+....+....+
      3    2  2                                         .
 0.90 +    3     2 2                                    +
      .       3       2 2                               .
 0.80 +          3         2  2 2                       +
      .            3               2  2                 .
 0.70 +               3                 2  2 2          +
      .                 3                       2  2    .
 0.60 +                    3                         2  2
      .                       3                         .
 0.50 +                         3                       +
      .                            3                    .
 0.40 +                               3                 +
      .  1                              3               .
 0.30 +    1  1                            3            +
      .          1 1  1                      3          .
 0.20 +                 1  1                            +
      .                       1 1  1            3       .
 0.10 +                               1 1  1       3    +
      .                                      1  1  1 3  .
 0.00 2....+....+....+....+....+....+....+....+....+.1..3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 04:54:06 on Monday, 17 November 2025                           
 Run completed at 04:54:32 on Monday, 17 November 2025                         
 CPU time of run 27 s
 This includes 27 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 1.800E-06
 ************************************************************
