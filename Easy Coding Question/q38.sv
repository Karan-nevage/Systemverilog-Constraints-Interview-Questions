// Write the constraint to generate three unique numbers, without using "unique"

class sample;
  rand int a;
  rand int b;
  rand int c;

  constraint cons_1{
    a inside {[0:100]};
    b inside {[0:100]};  
    c inside {[0:100]};
  }  
  
  constraint cons_2{
  	a != b;
    b != c;
    c != a;
  }
endclass


module top;
  sample s;
  initial begin
    s = new();
    assert(s.randomize());
    $display(" Value of \n A = %d \n B = %d  \n C = %d", s.a, s.b, s.c);
  end  
endmodule

