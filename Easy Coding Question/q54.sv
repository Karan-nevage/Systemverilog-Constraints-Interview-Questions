/*
54. randomize only one variable in a class
    a. use rand_mode(0) to disable
    b. randomize(variable_to_randomize)
    c. We can print rand_mode() of variable also using $display
*/
class sample;
  rand int a;
  rand int b;
  rand int c;
  
endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      // Disable randomization for b and c
      s.b.rand_mode(0);
      s.c.rand_mode(0);

      // Randomize only 'a'
      assert(s.randomize(a));

      // Display values
      $display("A: %0d, B: %0d, C: %0d", s.a, s.b, s.c);

      // Show rand_mode status
      $display("rand_mode(a)=%0d, rand_mode(b)=%0d, rand_mode(c)=%0d",
                s.a.rand_mode(), s.b.rand_mode(), s.c.rand_mode());
      $display("===================================");
    end
  end  
endmodule
