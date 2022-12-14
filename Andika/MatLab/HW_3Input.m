basemva = 100; accuracy = 0.0001; maxiter = 100;

busdata=[1  1     1.03  0.0   0     0     0     0     0     50    0
         2  2     1.04  0.0   20    10    80    0     0     250   0
         3  0     1.00  0.0   25    15    0     0     0     0     1
         4  0     1.00  0.0   10    5     0     0     0     0     3
         5  0     1.00  0.0   40    20    0     0     0     0     0
         6  0     1.00  0.0   60    40    0     0     0     0     0
         7  2     1.01  0.0   10    5     120   0     0     100   0
         8  0     1.00  0.0   80    60    0     0     0     0     0
         9  0     1.00  0.0   100   80    0     0     0     0     0];
     
linedata=[1      2      0.018   0.054     0.0045      1
          1      8      0.014   0.036     0.0030      1
          2      9      0.006   0.030     0.0028      1
          2      3      0.013   0.036     0.0030      1
          3      4      0.010   0.050     0.0000      1
          4      5      0.018   0.056     0.0000      1
          5      6      0.020   0.060     0.0000      1
          6      7      0.015   0.045     0.0038      1
          6      9      0.002   0.066     0.0000      1
          7      8      0.032   0.076     0.0000      1
          7      9      0.022   0.065     0.0000      1];
      

cost=[240   6.7   0.009
      220   6.1   0.005
      240   6.5   0.008];
  
mwlimits=[50      200
          50      200
          50      100];