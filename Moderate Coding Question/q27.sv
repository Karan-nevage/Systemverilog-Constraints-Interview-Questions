/* 27. Write constraints to randomize only specific bit of a bit vector, others are all 0's */
class sample;
  rand bit[7:0] a;
  
  constraint cons_1{
    a[7] && a[0] == 1'b1;
    (a[6] || a[5] || a[4] || a[3] || a[2] || a[1]) == 1'b0;
  }
  
endclass

module top;
  sample s;
  initial begin
    s = new();
    assert(s.randomize());
    $display("Value Having MSB & LSB 1s : %b", s.a);    
  end
  
endmodule
