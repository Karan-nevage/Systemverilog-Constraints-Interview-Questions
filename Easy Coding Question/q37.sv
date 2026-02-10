// 37. Write a constraint for the below scenario:
// If A < 20 then B value should generate 10 to 30, and if A > 50 then the B value should be 30 to 50 only.

class sample;
  rand int a;
  rand int b;

  constraint cons_1{
    if(a > 20) b inside {[10:30]};
    if(a > 50) b inside {[30:50]};  
  }  
endclass


module top;
  sample s;
  initial begin
    s = new();
    assert(s.randomize());
    $display(" Value of A = %d || B = %d", s.a, s.b);
  end  
endmodule

