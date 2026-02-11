/*
7. Write a constraint to generate Real numbers from 3.5 to 5.5 in array of size 10 in ascending order.
*/
//***************************** Note *****************************************
// -xlrm floating_pnt_constraint    <-- use this option to eanbling floating 
//										type constraints in Synopsys VCS
//****************************************************************************


class sample;
  rand shortreal arr[];

  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]){    
      arr[i] inside {[3.5 : 5.5]};  
    }
  }

function void post_randomize();
    arr.sort();
endfunction
endclass
    
module top;
  sample s;

  initial begin
    s = new();
    repeat (10) begin
      assert(s.randomize());
      $display("Array: %p ", s.arr);
      $display("=====================================================");
    end   
  end
endmodule
