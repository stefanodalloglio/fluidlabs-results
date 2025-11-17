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
 Number used before BFC allowance is                         618142
 Number used after BFC allowance is                          618142
 biggest cell volume divided by average is     1.97507899999995       at:
 ix = 1 iy = 40 iz = 203
 xg =0.26 yg =0.074063 zg =1.51875
 smallest cell volume divided by average is   2.499899999999927E-002  at:
 ix = 1 iy = 1 iz = 204
 xg =0.26 yg =9.375E-04 zg =1.52625
 ratio of smallest to biggest is   1.265721523037808E-002
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
 NY = 40
 YVLAST =0.075
 YFRAC(1)=0.025 ;YFRAC(9)=0.225
 YFRAC(17)=0.425 ;YFRAC(25)=0.625
 YFRAC(33)=0.825
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 400
 ZWLAST =3.
 ZFRAC(1)=2.5E-03 ;ZFRAC(81)=0.2025
 ZFRAC(161)=0.4025 ;ZFRAC(241)=0.6025
 ZFRAC(321)=0.8025
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
 PATCH(OB1 ,LOW , 1, 1, 1, 40, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,409.5 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.45 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 40, 400, 400, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 40, 40, 1, 400, 1, 1)
 COVAL(OB3 ,W1 ,1. ,0. )
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
 IXMON = 1 ;IYMON = 27 ;IZMON = 132
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 3000 ;NUMCLS = 5
 NYPRIN = 8 ;IYPRF = 1 ;IYPRL = 40
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
    9.375E-04   1.594E-02   3.094E-02   4.594E-02   6.094E-02

 Z-coordinates of the cell centres
    3.750E-03   6.038E-01   1.204E+00   1.804E+00   2.404E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    1.875E-03   1.688E-02   3.188E-02   4.688E-02   6.187E-02

 Z-coordinates of the (higher) cell faces
    7.500E-03   6.075E-01   1.208E+00   1.808E+00   2.408E+00

 
 Total number of F-array elements used is                    619153
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep  2615 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 2616
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 2616
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.280E+00   4.541E-10      5.811E-10
     V1     2.087E+00   1.467E-06      3.060E-06
     W1     2.087E+00   9.733E-06      2.031E-05
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.161E-04   7.988E+02      2.662E-02 (    1,   17,  346)
     V1     6.542E-08   1.639E-03     -8.662E-02 (    1,   16,  389)
     W1     1.721E-06   8.988E-01      2.250E-02 (    1,    1,  399)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-4.071859E-04
 pos. sum=0. neg. sum=-4.071859E-04
 nett sum=-4.071859E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 2.695009E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.585404E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-9.922191E-01
 pos. sum=0.269501 neg. sum=-1.35076
 nett sum=-1.081259
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 5.988909E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-5.988909E-01 (Mass Out -5.988909E-01 In 0.000000E+00)
 pos. sum=0.598891 neg. sum=-0.598891
 nett sum=1.554312E-14
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  2616
    Variable      Inflow        Outflow       Nett
       P1       5.988909E-01 -5.988909E-01  1.554312E-14
       V1       0.000000E+00 -4.071859E-04 -4.071859E-04
       W1       2.695009E-01 -1.350760E+00 -1.081259E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 27 IZMON= 132 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   9.9969E-11   1.0000E-10
    151   6.4971E+02   2.9996E-08   5.6544E-01
    301   5.2844E+02   8.4545E-09   5.5265E-01
    451   4.7996E+02   3.9930E-09   5.3735E-01
    601   4.5412E+02   2.2603E-09   5.2656E-01
    751   4.3863E+02  -2.7655E-06   5.1933E-01
    901   4.2894E+02  -1.2556E-04   5.1475E-01
   1051   4.2333E+02  -3.8596E-04   5.1292E-01
   1201   4.2031E+02  -4.4714E-04   5.1270E-01
   1351   4.1859E+02  -4.4496E-04   5.1270E-01
   1501   4.1762E+02  -4.4492E-04   5.1270E-01
   1651   4.1708E+02  -4.4492E-04   5.1270E-01
   1801   4.1679E+02  -4.4492E-04   5.1270E-01
   1951   4.1665E+02  -4.4492E-04   5.1270E-01
   2101   4.1659E+02  -4.4492E-04   5.1270E-01
   2251   4.1657E+02  -4.4492E-04   5.1270E-01
   2401   4.1658E+02  -4.4492E-04   5.1270E-01
   2551   4.1659E+02  -4.4492E-04   5.1270E-01
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00 -4.471E-04  1.000E-10
     Maxval=  6.497E+02  3.000E-08  5.654E-01
     Cellav=  4.209E+02 -2.759E-04  4.920E-01
 1.00 2..3.+3..2+.2..2....+....+....+....+....+....+....+
      .        3  3                                     .
 0.90 +              3  3  3  3 3  3  3  3  3  3  3  3  3
      .                                                 .
 0.80 +     1                                           +
      .        1                                        .
 0.70 +           1  1  2                               +
      .                 1  1  1 1  1  1  1  1  1  1  1  1
 0.60 +                                                 +
      .                                                 .
 0.50 +                                                 +
      .                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                    2                            .
 0.10 +                                                 +
      .                                                 .
 0.00 3....+....+....+....+...2+2..2+.2..2..2.+2..2+.2..2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 2.55E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   2.4657E-10   1.9679E-01
    151   9.8275E-07   2.1435E-03   3.4241E-01
    301   4.4754E-07   1.1779E-03   1.7231E-01
    451   2.5507E-07   7.2569E-04   9.8061E-02
    601   1.5763E-07   4.6534E-04   5.8445E-02
    751   1.0140E-07   3.0469E-04   3.5539E-02
    901   6.6400E-08   2.0208E-04   2.1702E-02
   1051   4.3925E-08   1.3503E-04   1.3231E-02
   1201   2.9232E-08   9.0585E-05   8.0236E-03
   1351   1.9523E-08   6.0900E-05   4.8236E-03
   1501   1.3066E-08   4.0990E-05   2.8651E-03
   1651   8.7567E-09   2.7606E-05   1.6745E-03
   1801   5.8734E-09   1.8597E-05   9.5756E-04
   1951   3.9416E-09   1.2529E-05   5.3109E-04
   2101   2.6461E-09   8.4412E-06   2.8151E-04
   2251   1.7760E-09   5.6820E-06   1.3858E-04
   2401   1.1726E-09   3.7599E-06   5.9343E-05
   2551   6.6473E-10   2.1377E-06   1.8877E-05
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -2.113E+01 -2.212E+01 -1.088E+01
     Maxval=  9.531E-02 -6.145E+00 -1.072E+00
 1.00 1..3.+....+....+....+....+....+....+....+....+....+
      3     3  2                                        .
 0.90 +           2  2                                  +
      .        3        2  2                            .
 0.80 +           3           2 2                       +
      .              3             2  2                 .
 0.70 +                 3                2  2           +
      .                    3                   2  2     .
 0.60 +                       3                      2  +
      .                         3                       2
 0.50 +                            3                    +
      .                               3                 .
 0.40 +                                  3              +
      .  1                                  3           .
 0.30 +     1  1                               3        +
      .           1  1                                  .
 0.20 +                 1  1  1                   3     +
      .                         1  1                    .
 0.10 +                               1  1  1        3  +
      .                                        1  1  1  .
 0.00 2....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 2.55E+03
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 07:00:01 on Monday, 17 November 2025                           
 Run completed at 07:01:22 on Monday, 17 November 2025                         
 CPU time of run 82 s
 This includes 82 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 6.530E-07
 ************************************************************
