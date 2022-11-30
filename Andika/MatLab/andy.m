clear;
basemva = 100;
accuracy  = 0.001;
accel = 1.6;
maxiter = 1;


busdata=[1  1  1.025  0.0  0.0  0.0  0.0  0.0  0   0  0 
         2  0  1.0    0.0  400  200  0.0  0.0  0   0  0 
         3  2  1.03   0.0  0.0  0.0  300  0.0  0 160  0];


linedata=[1  2  0.0  0.025  0.0  1
          1  3  0.0   0.05  0.0  1
          2  3  0.0  0.025  0.0  1];
      

import Lfybus.*;
import Lfgauss.*;
import Busout.*;
import Lineflow.*;
Lfybus                            % form the bus admittance matrix
Lfgauss                % Load flow solution by Gauss-Seidel method
Busout              % Prints the power flow solution on the screen
Lineflow          % Computes and displays the line flow and losses

