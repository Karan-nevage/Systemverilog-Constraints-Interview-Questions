/* 33. Constraint to randomize a 100 bit variable such that always and only 5 consecutive bits are 1s
a. Question variation: 5-1’s and 5-0’s repeating pattern */

class sample;
 
  rand bit[99:0] a;
  rand bit[99:0] b;
  rand int start_index;


    constraint cons_1 {
     start_index inside {[0:95]}; 
  	}	

  constraint c_pattern {
     a == (100'b0 | ((100'b11111) << start_index));
  	}
   
        
  constraint vons_2{
    foreach (b[i]){
      if ((i/5) %2 == 0) b[i]==1;
      else b[i] == 0;
    
    }
  }
    
endclass

//****************  Top Module  ************************

module top;
  sample s;

  initial begin
    s = new();
    repeat (3) begin
      assert(s.randomize());
      $display("Value A: %b", s.a);
      $display("Value B: %b", s.b);
      $display("=========================================================================================================");
    end
  end
endmodule
