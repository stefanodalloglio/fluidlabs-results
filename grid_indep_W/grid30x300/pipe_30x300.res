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
 Number used before BFC allowance is                         349812
 Number used after BFC allowance is                          349812
 biggest cell volume divided by average is     1.96670986674393       at:
 ix = 1 iy = 30 iz = 77
 xg =0.26 yg =0.07375 zg =0.765
 smallest cell volume divided by average is   3.333201333280124E-002  at:
 ix = 1 iy = 1 iz = 262
 xg =0.26 yg =1.25E-03 zg =2.615
 ratio of smallest to biggest is   1.694810907110844E-002
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
 NY = 30
 YVLAST =0.075
 YFRAC(1)=0.033333 ;YFRAC(7)=0.233333
 YFRAC(13)=0.433333 ;YFRAC(19)=0.633333
 YFRAC(25)=0.833333
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 300
 ZWLAST =3.
 ZFRAC(1)=3.333333E-03 ;ZFRAC(61)=0.203333
 ZFRAC(121)=0.403333 ;ZFRAC(181)=0.603333
 ZFRAC(241)=0.803333
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
 PATCH(OB1 ,LOW , 1, 1, 1, 30, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,409.5 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.45 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 30, 300, 300, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 30, 30, 1, 300, 1, 1)
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
 IXMON = 1 ;IYMON = 20 ;IZMON = 99
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 3000 ;NUMCLS = 5
 NYPRIN = 6 ;IYPRF = 1 ;IYPRL = 30
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
    1.250E-03   1.625E-02   3.125E-02   4.625E-02   6.125E-02

 Z-coordinates of the cell centres
    5.000E-03   6.050E-01   1.205E+00   1.805E+00   2.405E+00

 
 X-coordinates of the (higher) cell faces
    5.200E-01
 Y-coordinates of the (higher) cell faces
    2.500E-03   1.750E-02   3.250E-02   4.750E-02   6.250E-02

 Z-coordinates of the (higher) cell faces
    1.000E-02   6.100E-01   1.210E+00   1.810E+00   2.410E+00

 
 Total number of F-array elements used is                    350573
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep  1664 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 1665
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 1665
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.280E+00   6.992E-10      8.953E-10
     V1     2.077E+00   1.403E-06      2.915E-06
     W1     2.077E+00   9.596E-06      1.993E-05
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.654E-04   7.813E+02      3.464E-02 (    1,   13,  258)
     V1     9.688E-08   1.969E-03     -7.612E-02 (    1,   12,  293)
     W1     2.639E-06   8.984E-01      2.998E-02 (    1,    1,  299)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-4.540141E-04
 pos. sum=0. neg. sum=-4.540141E-04
 nett sum=-4.540141E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 2.695009E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-3.582641E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-9.884080E-01
 pos. sum=0.269501 neg. sum=-1.346672
 nett sum=-1.077171
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 5.988909E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-5.988909E-01 (Mass Out -5.988909E-01 In 0.000000E+00)
 pos. sum=0.598891 neg. sum=-0.598891
 nett sum=1.232348E-14
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1665
    Variable      Inflow        Outflow       Nett
       P1       5.988909E-01 -5.988909E-01  1.232348E-14
       V1       0.000000E+00 -4.540141E-04 -4.540141E-04
       W1       2.695009E-01 -1.346672E+00 -1.077171E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 20 IZMON= 99 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   9.9947E-11   1.0000E-10
    151   5.6521E+02   2.8482E-08   5.6873E-01
    301   4.7543E+02   5.4041E-09   5.4795E-01
    451   4.4232E+02  -1.1665E-06   5.3468E-01
    601   4.2693E+02  -2.3223E-04   5.2809E-01
    751   4.2054E+02  -4.6408E-04   5.2693E-01
    901   4.1796E+02  -4.6309E-04   5.2692E-01
   1051   4.1690E+02  -4.6310E-04   5.2692E-01
   1201   4.1651E+02  -4.6310E-04   5.2692E-01
   1351   4.1639E+02  -4.6310E-04   5.2692E-01
   1501   4.1638E+02  -4.6310E-04   5.2692E-01
   1651   4.1639E+02  -4.6310E-04   5.2692E-01
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00 -4.641E-04  1.000E-10
     Maxval=  5.652E+02  2.848E-08  5.687E-01
     Cellav=  4.026E+02 -2.897E-04  4.890E-01
 1.00 2....3...2+...2+....+....+....+....+....+....+....+
      .        3    3   3    3   3    3   3    3   3    3
 0.90 +                                                 +
      .        1                                        .
 0.80 +             1                                   +
      .                 1    1   1    1   1    1   1    1
 0.70 +                                                 +
      .                                                 .
 0.60 +                                                 +
      .                                                 .
 0.50 +                 2                               +
      .                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 3....+....+....+....+..2.+.2..+.2..+2...+2...2....2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 1.65E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   2.3339E-10   1.9679E-01
    151   9.4550E-07   1.4716E-03   2.2119E-01
    301   3.7132E-07   6.6865E-04   8.8676E-02
    451   1.7893E-07   3.3700E-04   3.9886E-02
    601   9.1660E-08   1.7647E-04   1.8327E-02
    751   4.8176E-08   9.3982E-05   8.3881E-03
    901   2.5615E-08   5.0397E-05   3.7675E-03
   1051   1.3682E-08   2.7101E-05   1.6349E-03
   1201   7.3244E-09   1.4589E-05   6.7124E-04
   1351   3.9254E-09   7.8554E-06   2.4994E-04
   1501   2.0815E-09   4.1765E-06   7.5149E-05
   1651   8.0598E-10   1.6165E-06   1.2134E-05
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -2.094E+01 -2.218E+01 -1.132E+01
     Maxval=  9.531E-02 -6.521E+00 -1.509E+00
 1.00 3....3....+....+....+....+....+....+....+....+....+
      .        2                                        .
 0.90 +        3    2                                   +
      .             3   2                               .
 0.80 +                      2   2                      +
      .                 3             2                 .
 0.70 +                                   2             +
      .                      3                 2   2    .
 0.60 +                          3                      +
      .                                                 2
 0.50 +                               3                 +
      .                                                 .
 0.40 +                                   3             +
      .    1                                            .
 0.30 +        1                               3        +
      .             1   1                               .
 0.20 +                      1                     3    +
      .                          1    1                 .
 0.10 +                                   1    1        +
      .                                            1    .
 0.00 2....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 1.65E+03
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 00:52:50 on Wednesday, 19 November 2025                        
 Run completed at 00:53:25 on Wednesday, 19 November 2025                      
 CPU time of run 37 s
 This includes 37 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 8.230E-07
 ************************************************************
