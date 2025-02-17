timeunit 1ns;
timeprecision 1ns;
class randtrans;
    randc bit [4:0] rand_add;
    rand bit [7:0] rand_data;
       
        //(8'h20 -8'h7F)
      //cons const1 {rand_data inside {[8'h41:8'h5a],[ 8'h61:8'h7a]};}
     // 80% uppercase , 20% lower 
      constraint const1 {
    rand_data dist { [8'h41:8'h5A] := 80, [8'h61:8'h7A] := 20 };}
endclass 