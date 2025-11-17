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
 Number used before BFC allowance is                         157482
 Number used after BFC allowance is                          157482
 biggest cell volume divided by average is     1.95003900000007       at:
 ix = 1 iy = 20 iz = 114
 xg =0.26 yg =0.073125 zg =1.7025
 smallest cell volume divided by average is   4.999900000000045E-002  at:
 ix = 1 iy = 1 iz = 113
 xg =0.26 yg =1.875E-03 zg =1.6875
 ratio of smallest to biggest is   2.564000002051179E-002
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
 NY = 20
 YVLAST =0.075
 YFRAC(1)=0.05 ;YFRAC(5)=0.25
 YFRAC(9)=0.45 ;YFRAC(13)=0.65
 YFRAC(17)=0.85
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 200
 ZWLAST =3.
 ZFRAC(1)=5.0E-03 ;ZFRAC(41)=0.205
 ZFRAC(81)=0.405 ;ZFRAC(121)=0.605
 ZFRAC(161)=0.805
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
 PATCH(OB1 ,LOW , 1, 1, 1, 20, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,409.5 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.45 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 20, 200, 200, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 20, 20, 1, 200, 1, 1)
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
 IXMON = 1 ;IYMON = 14 ;IZMON = 66
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 1000 ;NUMCLS = 5
 NYPRIN = 4 ;IYPRF = 1 ;IYPRL = 20
 NZPRIN = 40 ;IZPRF = 1 ;IZPRL = 10000
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
    1.875E-03   1.688E-02   3.188E-02   4.688E-02   6.188E-02

 Z-coordinates of the cell centres
    7.500E-03   6.075E-01   1.208E+00   1.808E+00   2.408E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    3.750E-03   1.875E-02   3.375E-02   4.875E-02   6.375E-02

 Z-coordinates of the (higher) cell faces
    1.500E-02   6.150E-01   1.215E+00   1.815E+00   2.415E+00

 
 Total number of F-array elements used is                    157993
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep   929 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 930
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 930
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.282E+00   1.190E-09      1.525E-09
     V1     2.059E+00   1.273E-06      2.620E-06
     W1     2.059E+00   9.302E-06      1.915E-05
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     2.466E-04   7.598E+02      4.958E-02 (    1,    8,  169)
     V1     1.528E-07   2.345E-03     -6.365E-02 (    1,    8,  196)
     W1     4.385E-06   8.971E-01      4.491E-02 (    1,    1,  199)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-5.413224E-04
 pos. sum=0. neg. sum=-5.413224E-04
 nett sum=-5.413224E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 2.695009E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.575477E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-9.819242E-01
 pos. sum=0.269501 neg. sum=-1.339472
 nett sum=-1.069971
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 5.988909E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-5.988909E-01 (Mass Out -5.988909E-01 In 0.000000E+00)
 pos. sum=0.598891 neg. sum=-0.598891
 nett sum=8.548717E-15
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   930
    Variable      Inflow        Outflow       Nett
       P1       5.988909E-01 -5.988909E-01  8.548717E-15
       V1       0.000000E+00 -5.413224E-04 -5.413224E-04
       W1       2.695009E-01 -1.339472E+00 -1.069971E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 14 IZMON= 66 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   9.9909E-11   1.0000E-10
     51   6.6898E+02   7.3178E-09   5.5727E-01
    101   5.3834E+02   2.0743E-08   5.4196E-01
    151   4.8669E+02   8.8304E-09   5.2531E-01
    201   4.5902E+02   1.8448E-09   5.1370E-01
    251   4.4225E+02  -3.4932E-06   5.0590E-01
    301   4.3152E+02  -8.2519E-05   5.0081E-01
    351   4.2488E+02  -2.8805E-04   4.9823E-01
    401   4.2105E+02  -3.8953E-04   4.9758E-01
    451   4.1882E+02  -3.9673E-04   4.9753E-01
    501   4.1750E+02  -3.9600E-04   4.9753E-01
    551   4.1671E+02  -3.9598E-04   4.9753E-01
    601   4.1627E+02  -3.9598E-04   4.9753E-01
    651   4.1602E+02  -3.9598E-04   4.9753E-01
    701   4.1590E+02  -3.9598E-04   4.9753E-01
    751   4.1584E+02  -3.9598E-04   4.9753E-01
    801   4.1582E+02  -3.9598E-04   4.9753E-01
    851   4.1582E+02  -3.9598E-04   4.9753E-01
    901   4.1583E+02  -3.9598E-04   4.9753E-01
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00 -3.967E-04  1.000E-10
     Maxval=  6.690E+02  2.074E-08  5.573E-01
     Cellav=  4.230E+02 -2.486E-04  4.798E-01
 1.00 2..3.+2.2.+2..2+....+....+....+....+....+....+....+
      .     3 3                                         .
 0.90 +          3  3  3 3  3  3  3  3 3  3  3  3 3  3  3
      .                                                 .
 0.80 +     1          2                                +
      .       1                                         .
 0.70 +          1                                      +
      .             1  1 1  1  1                        .
 0.60 +                           1  1 1  1  1  1 1  1  1
      .                                                 .
 0.50 +                                                 +
      .                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                  2                              .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 3....+....+....+....+.2..2..2.+2.2.+2..2+.2.2+.2..2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.01E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   2.1469E-10   1.9679E-01
     51   3.0241E-06   2.2074E-03   3.4614E-01
    101   1.3931E-06   1.2257E-03   1.7783E-01
    151   7.9412E-07   7.6410E-04   1.0271E-01
    201   4.9577E-07   4.9817E-04   6.2607E-02
    251   3.2186E-07   3.3251E-04   3.8833E-02
    301   2.1452E-07   2.2503E-04   2.4388E-02
    351   1.4524E-07   1.5360E-04   1.5374E-02
    401   9.9048E-08   1.0539E-04   9.6580E-03
    451   6.7853E-08   7.2547E-05   6.0291E-03
    501   4.6619E-08   5.0037E-05   3.7300E-03
    551   3.2090E-08   3.4552E-05   2.2799E-03
    601   2.2117E-08   2.3878E-05   1.3714E-03
    651   1.5256E-08   1.6508E-05   8.0729E-04
    701   1.0529E-08   1.1416E-05   4.6112E-04
    751   7.2683E-09   7.8936E-06   2.5190E-04
    801   5.0013E-09   5.4324E-06   1.2805E-04
    851   3.3270E-09   3.6097E-06   5.7267E-05
    901   1.9068E-09   2.0543E-06   2.0238E-05
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -2.008E+01 -2.226E+01 -1.081E+01
     Maxval=  9.531E-02 -6.116E+00 -1.061E+00
 1.00 1..3.+....+....+....+....+....+....+....+....+....+
      3     3 2                                         .
 0.90 +       3  2  2                                   +
      .                2 2                              .
 0.80 +          3  3       2  2                        +
      .                3          2  2                  .
 0.70 +                  3             2  2             +
      .                     3                2  2 2     .
 0.60 +                        3                     2  +
      .                           3                     2
 0.50 +                              3                  +
      .                                3                .
 0.40 +                                   3             +
      .  1  1                                           .
 0.30 +       1  1                           3          +
      .             1  1                        3       .
 0.20 +                  1  1  1                  3     +
      .                           1  1                  .
 0.10 +                                1  1  1       3  +
      .                                         1 1  1  .
 0.00 2....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.01E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 05:57:06 on Monday, 17 November 2025                           
 Run completed at 05:57:17 on Monday, 17 November 2025                         
 CPU time of run 12 s
 This includes 12 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 1.075E-06
 ************************************************************
