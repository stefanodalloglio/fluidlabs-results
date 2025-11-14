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
 Number used before BFC allowance is                          28018
 Number used after BFC allowance is                           28018
 biggest cell volume divided by average is     1.90001615000000       at:
 ix = 1 iy = 10 iz = 36
 xg =0.26 yg =0.07125 zg =1.059702
 smallest cell volume divided by average is   9.999950999999913E-002  at:
 ix = 1 iy = 1 iz = 35
 xg =0.26 yg =3.75E-03 zg =1.029851
 ratio of smallest to biggest is   5.263087369020480E-002
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
 NZ = 67
 ZWLAST =2.
 ZFRAC(1)=0.014925 ;ZFRAC(14)=0.208955
 ZFRAC(27)=0.402985 ;ZFRAC(40)=0.597015
 ZFRAC(53)=0.791045 ;ZFRAC(66)=0.985075
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
 PATCH(OB2 ,HIGH , 1, 1, 1, 10, 67, 67, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 10, 10, 1, 67, 1, 1)
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
 IXMON = 1 ;IYMON = 7 ;IZMON = 33
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 1000 ;NUMCLS = 5
 NYPRIN = 2 ;IYPRF = 1 ;IYPRL = 10
 NZPRIN = 13 ;IZPRF = 1 ;IZPRL = 10000
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
    1.493E-02   4.030E-01   7.910E-01   1.179E+00   1.567E+00
    1.955E+00
 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    7.500E-03   2.250E-02   3.750E-02   5.250E-02   6.750E-02

 Z-coordinates of the (higher) cell faces
    2.985E-02   4.179E-01   8.060E-01   1.194E+00   1.582E+00
    1.970E+00
 
 Total number of F-array elements used is                     28213
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep   310 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 311
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 311
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.285E+00   3.786E-09      4.865E-09
     V1     1.611E+00   1.885E-06      3.038E-06
     W1     1.611E+00   8.284E-06      1.335E-05
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     7.824E-04   5.252E+02      9.178E-02 (    1,    3,   54)
     V1     8.745E-07   2.871E-03     -4.215E-02 (    1,    4,   67)
     W1     1.064E-05   8.851E-01      8.957E-02 (    1,    1,   66)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-7.278406E-04
 pos. sum=0. neg. sum=-7.278406E-04
 nett sum=-7.278406E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 2.695009E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.536305E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-6.689936E-01
 pos. sum=0.269501 neg. sum=-1.022624
 nett sum=-0.753123
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 5.988909E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-5.988909E-01 (Mass Out -5.988909E-01 In 0.000000E+00)
 pos. sum=0.598891 neg. sum=-0.598891
 nett sum=4.996004E-15
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   311
    Variable      Inflow        Outflow       Nett
       P1       5.988909E-01 -5.988909E-01  4.996004E-15
       V1       0.000000E+00 -7.278406E-04 -7.278406E-04
       W1       2.695009E-01 -1.022624E+00 -7.531233E-01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 7 IZMON= 33 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   9.9802E-11   1.0000E-10
     51   2.6235E+02   2.7956E-08   5.5678E-01
    101   2.2521E+02  -6.0960E-06   5.3461E-01
    151   2.1394E+02  -3.1166E-04   5.2568E-01
    201   2.1154E+02  -4.2475E-04   5.2470E-01
    251   2.1140E+02  -4.2464E-04   5.2469E-01
    301   2.1150E+02  -4.2464E-04   5.2469E-01
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00 -4.248E-04  1.000E-10
     Maxval=  2.623E+02  2.796E-08  5.568E-01
     Cellav=  1.908E+02 -2.274E-04  4.559E-01
 1.00 2....+..3.+....+.2..+....+....+....+....+....+....+
      .                3       3       3        3       3
 0.90 +                                                 +
      .                1                                .
 0.80 +                        1       1        1       1
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
      .                        2                        .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 3....+....+....+....+....+....+..2.+....+.2..+....2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 3.01E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   1.3963E-10   1.9679E-01
     51   2.8237E-06   1.3846E-03   1.2190E-01
    101   9.0756E-07   5.0210E-04   3.4055E-02
    151   3.6516E-07   2.0626E-04   1.0239E-02
    201   1.5446E-07   8.8004E-05   2.6829E-03
    251   5.9193E-08   3.3225E-05   4.4779E-04
    301   7.4887E-09   3.8219E-06   2.0113E-05
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.871E+01 -2.269E+01 -1.081E+01
     Maxval=  9.531E-02 -6.582E+00 -1.626E+00
 1.00 3....+..2.+....+....+....+....+....+....+....+....+
      .       3        2                                .
 0.90 +                        2                        +
      .                                2                .
 0.80 +                3                                +
      .                                         2       .
 0.70 +                        3                        +
      .                                                 2
 0.60 +                                                 +
      .                                3                .
 0.50 +                                                 +
      .                                                 .
 0.40 +                                                 +
      .                                         3       .
 0.30 +       1                                         +
      .                1                                .
 0.20 +                        1                        +
      .                                1                .
 0.10 +                                         1       +
      .                                                 .
 0.00 2....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 3.01E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 07:19:48 on Friday, 14 November 2025                           
 Run completed at 07:19:49 on Friday, 14 November 2025                         
 CPU time of run 2 s
 This includes 2 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 3.199E-06
 ************************************************************
