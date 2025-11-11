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
 Number used before BFC allowance is                          20156
 Number used after BFC allowance is                           20156
 biggest cell volume divided by average is     1.90000826999338       at:
 ix = 1 iy = 10 iz = 19
 xg =0.5 yg =0.095 zg =0.37
 smallest cell volume divided by average is   9.999952999985860E-002  at:
 ix = 1 iy = 1 iz = 29
 xg =0.5 yg =5.0E-03 zg =0.57
 ratio of smallest to biggest is   5.263110249525759E-002
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
 
 TEXT(My first simulation                     )
 
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
 XULAST =1.
 ************************************************************
  Group 4. Y-Direction Grid Spacing
 NY = 10
 YVLAST =0.1
 YFRAC(1)=0.1 ;YFRAC(3)=0.3
 YFRAC(5)=0.5 ;YFRAC(7)=0.7
 YFRAC(9)=0.9
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 50
 ZWLAST =1.
 ZFRAC(1)=0.02 ;ZFRAC(11)=0.22
 ZFRAC(21)=0.42 ;ZFRAC(31)=0.62
 ZFRAC(41)=0.82
 ************************************************************
  Group 6. Body-Fitted Coordinates
 ************************************************************
  Group 7. Variables: STOREd,SOLVEd,NAMEd
 ONEPHS = T
 NAME(1)=P1 ;NAME(5)=V1
 NAME(7)=W1 ;NAME(148)=DEN1
    * Y in SOLUTN argument list denotes:
    * 1-stored 2-solved 3-whole-field
    * 4-point-by-point 5-explicit 6-harmonic averaging 
 SOLUTN(P1,Y,Y,Y,N,N,Y)
 SOLUTN(V1,Y,Y,Y,N,N,Y)
 SOLUTN(W1,Y,Y,Y,N,N,Y)
 SOLUTN(DEN1,Y,N,N,N,N,Y)
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
 RHO1 =998.23 ;TMP1 =0. ;EL1 =0.
 TSURR =0. ;TEMP0 =273.15 ;PRESS0 =1.01325E+05
 DVO1DT =1.18E-04 ;DRH1DP =0.
 EMISS =0. ;SCATT =0.
 RADIA =0. ;RADIB =0.
 ENUL =1.006E-06 ;ENUT =0.
 PRNDTL(V1)=1. ;PRNDTL(W1)=1.
 PRT(V1)=1. ;PRT(W1)=1.
 CP1 =4181.8 ;CP2 =4181.8
 ************************************************************
  Group 10.Inter-Phase Transfer Processes
 ************************************************************
  Group 11.Initial field variables (PHIs)
 FIINIT(P1)=0. ;FIINIT(V1)=1.0E-10
 FIINIT(W1)=1.0E-10 ;FIINIT(DEN1)=998.23
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
 COVAL(OB1 ,P1 , FIXFLU ,0.99823 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,1.0E-03 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 10, 50, 50, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 10, 10, 1, 50, 1, 1)
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
 OVRRLX =0.
 EXPERT = F ;NNORSL = F
 ************************************************************
  Group 18. Limits
 VARMAX(P1)=1.0E+10 ;VARMIN(P1)=-1.0E+10
 VARMAX(V1)=1.0E+06 ;VARMIN(V1)=-1.0E+06
 VARMAX(W1)=1.0E+06 ;VARMIN(W1)=-1.0E+06
 VARMAX(DEN1)=1.0E+10 ;VARMIN(DEN1)=1.0E-06
 ************************************************************
  Group 19. Data transmitted to GROUND
 PARSOL = F
 CONWIZ = T
 ISG62 = 0
 SPEDAT(SET,DOMAIN,PHASE_2_MAT,I,67)
 SPEDAT(SET,DOMAIN,PHASE_1_MAT,I,67)
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
 ************************************************************
  Group 22. Monitor Print-Out
 IXMON = 1 ;IYMON = 5 ;IZMON = 29
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 1000 ;NUMCLS = 5
 NYPRIN = 2 ;IYPRF = 1 ;IYPRL = 10
 NZPRIN = 10 ;IZPRF = 1 ;IZPRL = 10000
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
    5.000E-01
 Y-coordinates of the cell centres
    5.000E-03   2.500E-02   4.500E-02   6.500E-02   8.500E-02

 Z-coordinates of the cell centres
    1.000E-02   2.100E-01   4.100E-01   6.100E-01   8.100E-01

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    1.000E-02   3.000E-02   5.000E-02   7.000E-02   9.000E-02

 Z-coordinates of the (higher) cell faces
    2.000E-02   2.200E-01   4.200E-01   6.200E-01   8.200E-01

 
 Total number of F-array elements used is                     20317
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 *** End of sweep 1000
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 1000
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.032E-02   1.850E-08      1.909E-10
     V1     2.305E-05   2.000E-02      4.610E-07
     W1     2.305E-05   4.731E-01      1.090E-05
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.752E-06   3.290E-03      8.793E-04 (    1,   10,    4)
     V1     1.777E-07   1.421E-04     -8.695E-05 (    1,    8,   50)
     W1     4.669E-07   1.143E-03      5.337E-04 (    1,   10,    8)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-3.682700E-07
 pos. sum=0. neg. sum=-3.6827E-07
 nett sum=-3.6827E-07
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 4.991060E-06
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-5.048699E-06
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-1.077856E-05
 pos. sum=4.99106E-06 neg. sum=-1.582726E-05
 nett sum=-1.08362E-05
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 4.991060E-03
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-4.991060E-03 (Mass Out -4.991060E-03 In 0.000000E+00)
 pos. sum=4.99106E-03 neg. sum=-4.99106E-03
 nett sum=0.
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1000
    Variable      Inflow        Outflow       Nett
       P1       4.991060E-03 -4.991060E-03  0.000000E+00
       V1       0.000000E+00 -3.682700E-07 -3.682700E-07
       W1       4.991060E-06 -1.582726E-05 -1.083620E-05
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 5 IZMON= 29 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   9.9999E-11   1.0000E-10
     51   2.6165E-03   5.5345E-12   1.0099E-03
    101   2.5523E-03   5.5177E-12   1.0193E-03
    151   2.4922E-03   5.6084E-12   1.0283E-03
    201   2.4359E-03   5.7613E-12   1.0370E-03
    251   2.3831E-03   5.9865E-12   1.0453E-03
    301   2.3336E-03   6.2885E-12   1.0534E-03
    351   2.2871E-03   6.6683E-12   1.0612E-03
    401   2.2434E-03   7.1247E-12   1.0687E-03
    451   2.2023E-03   7.6549E-12   1.0759E-03
    501   2.1637E-03   8.2559E-12   1.0830E-03
    551   2.1274E-03   8.9243E-12   1.0898E-03
    601   2.0931E-03   9.6570E-12   1.0964E-03
    651   2.0609E-03   1.0451E-11   1.1029E-03
    701   2.0305E-03   1.1305E-11   1.1091E-03
    751   2.0018E-03   1.2216E-11   1.1152E-03
    801   1.9747E-03   1.3183E-11   1.1211E-03
    851   1.9491E-03   1.4204E-11   1.1269E-03
    901   1.9250E-03   1.5277E-11   1.1325E-03
    951   1.9021E-03   1.6402E-11   1.1381E-03
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00  5.518E-12  1.000E-10
     Maxval=  2.617E-03  1.000E-10  1.138E-03
     Cellav=  2.089E-03  1.380E-11  1.026E-03
 1.00 2..1.1....+....+....+....+....+....+...3+.3..3.3..3
      .       1  1    3 3  3  3 3  3  3 3  3            .
 0.90 +  3 3  3  3 3  1                                 +
      .                 1  1  1 1                       .
 0.80 +                            1  1 1  1            +
      .                                      1  1  1 1  1
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
 0.10 +                                         2  2 2  2
      .                         2  2  2 2  2 2          .
 0.00 3..2.2..2.+2.2.+2.2.+2..2+....+....+....+....+....+
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   7.1200E-13   4.5373E-06
     51   2.0589E-07   2.1785E-02   9.9045E-01
    101   1.5664E-07   2.3430E-02   9.3927E-01
    151   1.2150E-07   2.4432E-02   8.9092E-01
    201   9.8558E-08   2.5032E-02   8.4499E-01
    251   8.2095E-08   2.5351E-02   8.0129E-01
    301   6.9168E-08   2.5465E-02   7.5967E-01
    351   5.8987E-08   2.5422E-02   7.2003E-01
    401   5.0913E-08   2.5256E-02   6.8224E-01
    451   4.4462E-08   2.4995E-02   6.5507E-01
    501   3.9267E-08   2.4664E-02   6.3563E-01
    551   3.5050E-08   2.4278E-02   6.1712E-01
    601   3.1604E-08   2.3853E-02   5.9943E-01
    651   2.8769E-08   2.3399E-02   5.8218E-01
    701   2.6425E-08   2.2925E-02   5.6526E-01
    751   2.4477E-08   2.2440E-02   5.4889E-01
    801   2.2847E-08   2.1948E-02   5.3291E-01
    851   2.1475E-08   2.1455E-02   5.1732E-01
    901   2.0316E-08   2.0964E-02   5.0213E-01
    951   1.9330E-08   2.0478E-02   4.8733E-01
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.776E+01 -2.797E+01 -1.230E+01
     Maxval=  9.531E-02 -3.670E+00 -9.596E-03
 1.00 1..3.3..3.+3.3.+3.2.+2..2+2..2+.2.2+.2.2+.2..2.2..2
      .                 3  3  3 3  3  3 3  3 3  3  3 3  3
 0.90 +                                                 +
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
      .  1                                              .
 0.10 +    1  1  1 1                                    +
      .               1 1  1  1 1  1  1                 .
 0.00 3....+....+....+....+....+....+...1+.1.1+.1..1.1..1
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 15:08:53 on Tuesday, 11 November 2025                          
 Run completed at 15:08:56 on Tuesday, 11 November 2025                        
 CPU time of run 4 s
 This includes 4 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 2.667E-06
 ************************************************************
