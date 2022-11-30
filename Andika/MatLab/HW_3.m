import HW_3Input.*;    
import Lfybus.*;
import Lfnewton.*;
import Busout.*;
import Lineflow.*;
import Bloss.*;
import Gencost.*;
import Dispatch.*;

HW_3Input

diary HW3_1stlineflow.txt
Lfybus                 
Lfnewton
Busout 
diary off

diary HW3_optimaldispatch.txt
dpsiter = 1;
fprintf("\n\n interation NO : %i",dpsiter);
fprintf("\n_______________________")
Bloss
Gencost
Dispatch
dpslackLim = 0.001;
dpsdata =dpslack;
costdata =totalcost;
while dpslack > dpslackLim
    dpsiter = dpsiter+1;
    fprintf("\n\n interation NO : %i",dpsiter);
    fprintf("\n_______________________")
    Lfnewton
    Bloss
    Dispatch
    Gencost
    dpsdata =[dpsdata dpslack];
    costdata =[costdata totalcost];
    
end
diary off

diary HW3_finalsolution.txt
Busout
Gencost
Lineflow
diary off