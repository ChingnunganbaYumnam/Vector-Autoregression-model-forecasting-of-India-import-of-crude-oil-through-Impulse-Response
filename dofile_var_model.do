

. doedit "C:\Users\CHINGNUNGANBA\Desktop\stata\stata var model do file.do" 

.  import excel "C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Book1.xlsx", sheet("Sheet1") firstrow

. gen years=1990+_n-1

. tsset years
        time variable:  years, 1990 to 2024
                delta:  1 unit

. dfuller lqt

Dickey-Fuller test for unit root                   Number of obs   =        34

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -2.316            -3.689            -2.975            -2.619
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.1669

. gen dlqt=d.lqt
(1 missing value generated)

. dfuller dlqt

Dickey-Fuller test for unit root                   Number of obs   =        33

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -4.043            -3.696            -2.978            -2.620
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0012

. dfuller Alternativeandnuclearenergy

Dickey-Fuller test for unit root                   Number of obs   =        34

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)              0.267            -3.689            -2.975            -2.619
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.9758

. 
. 
. gen dAlternativeandnuclearenergy=d.Alternativeandnuclearenergy
(1 missing value generated)

. dfuller dAlternativeandnuclearenergy

Dickey-Fuller test for unit root                   Number of obs   =        33

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -5.773            -3.696            -2.978            -2.620
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0000

. dfuller lrgdp

Dickey-Fuller test for unit root                   Number of obs   =        34

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)              0.315            -3.689            -2.975            -2.619
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.9780

. gen drdgp=d.lrgdp
(1 missing value generated)

. dfuller drdgp

Dickey-Fuller test for unit root                   Number of obs   =        33

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -5.708            -3.696            -2.978            -2.620
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0000

. dfuller lrprimp

Dickey-Fuller test for unit root                   Number of obs   =        34

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -1.377            -3.689            -2.975            -2.619
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.5931

. gen drprimp=d.lrprimp
(1 missing value generated)

. dfuller drprimp

Dickey-Fuller test for unit root                   Number of obs   =        33

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -5.244            -3.696            -2.978            -2.620
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0000

.  var dlqt dAlternativeandnuclearenergy drdgp drprimp ,lags(1/5)

Vector autoregression

Sample:  1996 - 2024                            Number of obs     =         29
Log likelihood =   200.3613                     AIC               =   -8.02492
FPE            =   1.79e-08                     HQIC              =  -6.784559
Det(Sigma_ml)  =   1.17e-11                     SBIC              =  -4.064477

Equation           Parms      RMSE     R-sq      chi2     P>chi2
----------------------------------------------------------------
dlqt                 21     .076908   0.8025   117.8507   0.0000
dAlternativean~y     21     .209662   0.6939   65.72661   0.0000
drdgp                21     .026451   0.7562   89.94285   0.0000
drprimp              21     .288267   0.7468     85.548   0.0000
----------------------------------------------------------------

----------------------------------------------------------------------------------------------
                             |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
-----------------------------+----------------------------------------------------------------
dlqt                         |
                        dlqt |
                         L1. |    .465278    .183187     2.54   0.011     .1062381    .8243179
                         L2. |  -.2747835   .1651665    -1.66   0.096    -.5985039    .0489369
                         L3. |   .5945222    .168836     3.52   0.000     .2636097    .9254347
                         L4. |  -.9208577   .1747147    -5.27   0.000    -1.263292   -.5784232
                         L5. |  -.2450892   .1789043    -1.37   0.171    -.5957352    .1055567
                             |
dAlternativeandnuclearenergy |
                         L1. |  -.2260133   .0615172    -3.67   0.000    -.3465848   -.1054417
                         L2. |   .0044652   .0576896     0.08   0.938    -.1086044    .1175348
                         L3. |  -.1209751   .0531128    -2.28   0.023    -.2250742    -.016876
                         L4. |   -.236001   .0618324    -3.82   0.000    -.3571904   -.1148117
                         L5. |  -.2535478   .0726077    -3.49   0.000    -.3958563   -.1112394
                             |
                       drdgp |
                         L1. |  -.3024268   .4429703    -0.68   0.495    -1.170633     .565779
                         L2. |  -.0747852   .4244802    -0.18   0.860    -.9067512    .7571808
                         L3. |  -1.991644   .5233214    -3.81   0.000    -3.017335   -.9659528
                         L4. |  -.0872214   .4442229    -0.20   0.844    -.9578824    .7834395
                         L5. |  -.0810866   .6826613    -0.12   0.905    -1.419078    1.256905
                             |
                     drprimp |
                         L1. |  -.0495039   .0529916    -0.93   0.350    -.1533656    .0543577
                         L2. |  -.0187963   .0430942    -0.44   0.663    -.1032593    .0656667
                         L3. |   .0661647   .0449024     1.47   0.141    -.0218424    .1541719
                         L4. |   .1526019   .0465353     3.28   0.001     .0613944    .2438095
                         L5. |   .0435533   .0548604     0.79   0.427     -.063971    .1510777
                             |
                       _cons |   .2877159   .0690989     4.16   0.000     .1522846    .4231472
-----------------------------+----------------------------------------------------------------
dAlternativeandnuclearenergy |
                        dlqt |
                         L1. |   -1.80793   .4993967    -3.62   0.000    -2.786729   -.8291303
                         L2. |   1.338102   .4502699     2.97   0.003     .4555895    2.220615
                         L3. |  -1.863442   .4602736    -4.05   0.000    -2.765562   -.9613223
                         L4. |   1.685292   .4762999     3.54   0.000     .7517616    2.618823
                         L5. |  -.9650059   .4877213    -1.98   0.048    -1.920922   -.0090897
                             |
dAlternativeandnuclearenergy |
                         L1. |  -.1536504   .1677057    -0.92   0.360    -.4823475    .1750467
                         L2. |  -.5929238    .157271    -3.77   0.000    -.9011694   -.2846782
                         L3. |  -.3517706   .1447938    -2.43   0.015    -.6355612     -.06798
                         L4. |  -.4774572   .1685649    -2.83   0.005    -.8078384    -.147076
                         L5. |    .099641     .19794     0.50   0.615    -.2883143    .4875963
                             |
                       drdgp |
                         L1. |  -.6179167   1.207607    -0.51   0.609    -2.984783    1.748949
                         L2. |  -4.373851     1.1572    -3.78   0.000    -6.641922    -2.10578
                         L3. |   1.351733   1.426657     0.95   0.343    -1.444462    4.147929
                         L4. |  -.0314827   1.211022    -0.03   0.979    -2.405042    2.342077
                         L5. |   .4698125   1.861043     0.25   0.801    -3.177764    4.117389
                             |
                     drprimp |
                         L1. |   .2595805   .1444635     1.80   0.072    -.0235627    .5427236
                         L2. |   .0880022   .1174815     0.75   0.454    -.1422572    .3182617
                         L3. |  -.0734797   .1224111    -0.60   0.548    -.3134011    .1664417
                         L4. |  -.3977785   .1268626    -3.14   0.002    -.6464246   -.1491323
                         L5. |  -.0157588    .149558    -0.11   0.916    -.3088871    .2773695
                             |
                       _cons |   .4869319   .1883745     2.58   0.010     .1177247     .856139
-----------------------------+----------------------------------------------------------------
drdgp                        |
                        dlqt |
                         L1. |  -.1645904   .0630033    -2.61   0.009    -.2880745   -.0411063
                         L2. |    .015791   .0568055     0.28   0.781    -.0955457    .1271277
                         L3. |   .0453169   .0580675     0.78   0.435    -.0684933    .1591272
                         L4. |  -.0292207   .0600894    -0.49   0.627    -.1469937    .0885524
                         L5. |    -.22227   .0615303    -3.61   0.000    -.3428672   -.1016729
                             |
dAlternativeandnuclearenergy |
                         L1. |  -.0123686   .0211575    -0.58   0.559    -.0538366    .0290994
                         L2. |  -.0408321   .0198411    -2.06   0.040      -.07972   -.0019442
                         L3. |    .007512    .018267     0.41   0.681    -.0282906    .0433147
                         L4. |  -.0038892   .0212659    -0.18   0.855    -.0455697    .0377912
                         L5. |   .0171086   .0249719     0.69   0.493    -.0318353    .0660526
                             |
                       drdgp |
                         L1. |  -.2680426   .1523502    -1.76   0.079    -.5666434    .0305583
                         L2. |   .1003478   .1459909     0.69   0.492    -.1857891    .3864847
                         L3. |   -.131395   .1799852    -0.73   0.465    -.4841595    .2213694
                         L4. |   .0096023    .152781     0.06   0.950    -.2898429    .3090475
                         L5. |  -.5975515   .2347868    -2.55   0.011    -1.057725   -.1373779
                             |
                     drprimp |
                         L1. |    .035642   .0182253     1.96   0.051     -.000079     .071363
                         L2. |  -.0183709   .0148213    -1.24   0.215    -.0474202    .0106783
                         L3. |   .0068365   .0154432     0.44   0.658    -.0234317    .0371047
                         L4. |   .0189053   .0160048     1.18   0.238    -.0124636    .0502742
                         L5. |   .1133169    .018868     6.01   0.000     .0763362    .1502975
                             |
                       _cons |   .1299148   .0237651     5.47   0.000     .0833361    .1764935
-----------------------------+----------------------------------------------------------------
drprimp                      |
                        dlqt |
                         L1. |   .3067071    .686626     0.45   0.655    -1.039055    1.652469
                         L2. |    .623305   .6190811     1.01   0.314    -.5900716    1.836682
                         L3. |   .3731367   .6328352     0.59   0.555    -.8671976    1.613471
                         L4. |  -.4526002     .65487    -0.69   0.489    -1.736122    .8309214
                         L5. |  -1.203023   .6705734    -1.79   0.073    -2.517323    .1112768
                             |
dAlternativeandnuclearenergy |
                         L1. |   .3499653   .2305804     1.52   0.129     -.101964    .8018947
                         L2. |   .2450063   .2162337     1.13   0.257    -.1788039    .6688166
                         L3. |  -.1906592   .1990786    -0.96   0.338    -.5808461    .1995277
                         L4. |  -.5273946   .2317618    -2.28   0.023    -.9816394   -.0731499
                         L5. |   .1846857   .2721499     0.68   0.497    -.3487183    .7180897
                             |
                       drdgp |
                         L1. |  -3.489454   1.660352    -2.10   0.036    -6.743685   -.2352237
                         L2. |     -2.129   1.591047    -1.34   0.181    -5.247395    .9893958
                         L3. |   -1.85489   1.961526    -0.95   0.344     -5.69941     1.98963
                         L4. |    1.93336   1.665047     1.16   0.246    -1.330073    5.196793
                         L5. |  -6.709422   2.558768    -2.62   0.009    -11.72452   -1.694329
                             |
                     drprimp |
                         L1. |   .2761776   .1986244     1.39   0.164    -.1131191    .6654742
                         L2. |  -.4577392   .1615266    -2.83   0.005    -.7743254   -.1411529
                         L3. |   .2156273   .1683044     1.28   0.200    -.1142433    .5454979
                         L4. |  -.0596885   .1744248    -0.34   0.732    -.4015549    .2821779
                         L5. |   .8403544    .205629     4.09   0.000     .4373291     1.24338
                             |
                       _cons |   .8047978   .2589981     3.11   0.002     .2971708    1.312425
----------------------------------------------------------------------------------------------

.  varsoc

   Selection-order criteria
   Sample:  1996 - 2024                         Number of obs      =        29
  +---------------------------------------------------------------------------+
  |lag |    LL      LR      df    p      FPE       AIC      HQIC      SBIC    |
  |----+----------------------------------------------------------------------|
  |  0 |    103.6                      1.2e-08* -6.86896  -6.80989* -6.68036* |
  |  1 |   112.07   16.94   16  0.389  2.1e-08  -6.34965  -6.05433  -5.40669  |
  |  2 |  121.772  19.404   16  0.248  3.5e-08  -5.91532  -5.38374  -4.21799  |
  |  3 |  129.811  16.078   16  0.448  7.2e-08   -5.3663  -4.59846   -2.9146  |
  |  4 |  153.092  46.562   16  0.000  6.6e-08  -5.86844  -4.86433  -2.66236  |
  |  5 |  200.361  94.538*  16  0.000  1.8e-08  -8.02492* -6.78456  -4.06448  |
  +---------------------------------------------------------------------------+
   Endogenous:  dlqt dAlternativeandnuclearenergy drdgp drprimp
    Exogenous:  _cons

. varstable

   Eigenvalue stability condition
  +----------------------------------------+
  |        Eigenvalue        |   Modulus   |
  |--------------------------+-------------|
  |    .844863 +  .4687298i  |   .966179   |
  |    .844863 -  .4687298i  |   .966179   |
  |  -.6346141 +  .7077465i  |     .9506   |
  |  -.6346141 -  .7077465i  |     .9506   |
  |  .01796632 +  .9476592i  |   .947829   |
  |  .01796632 -  .9476592i  |   .947829   |
  |   .5167644 +  .7427499i  |   .904833   |
  |   .5167644 -  .7427499i  |   .904833   |
  |  -.2972985 +  .8412986i  |   .892283   |
  |  -.2972985 -  .8412986i  |   .892283   |
  |   .6807445 +  .5438698i  |   .871325   |
  |   .6807445 -  .5438698i  |   .871325   |
  |   .8663153               |   .866315   |
  |  -.4910496 +  .6800603i  |   .838816   |
  |  -.4910496 -  .6800603i  |   .838816   |
  |  -.8053159               |   .805316   |
  |  -.7722717 +  .1305927i  |   .783236   |
  |  -.7722717 -  .1305927i  |   .783236   |
  |   .2642774 +    .70908i  |   .756728   |
  |   .2642774 -    .70908i  |   .756728   |
  +----------------------------------------+
   All the eigenvalues lie inside the unit circle.
   VAR satisfies stability condition.

.  irf set irf, replace
(file irf.irf created)
(file irf.irf now active)

.  irf create IRF, step(6)
(file irf.irf updated)

.  irf graph irf ,irf(IRF) impulse ( drprimp drdgp dAlternativeandnuclearenergy  ) response ( dlqt )

.  irf graph irf ,irf(IRF) impulse (  dAlternativeandnuclearenergy  ) response ( dlqt )

. graph save Graph "C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph_irf.gph"
(file C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph_irf.gph saved)
graph export "C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph_irf.pdf", as(pdf) replace
(file C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph_irf.pdf written in PDF format)

.  irf graph irf ,irf(IRF) impulse (   drdgp ) response ( dlqt )

. graph export "C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph2_irf_qauntity imported due to shocks in real gdp.pdf"
> , as(pdf) replace
(file C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph2_irf_qauntity imported due to shocks in real gdp.pdf written in
>  PDF format)

.  irf graph irf ,irf(IRF) impulse ( drprimp ) response ( dlqt )

. graph export "C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph2_irf_qauntity of crude oil imported due to shocks in 
> real price of imports.pdf", as(pdf) replace
(file C:\Users\CHINGNUNGANBA\Desktop\stata\log_file_ardl\Graph2_irf_qauntity of crude oil imported due to shocks in real price
>  of imports.pdf written in PDF format)

. 
