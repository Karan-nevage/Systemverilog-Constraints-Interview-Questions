// 45. Write a constraint without an inside function to generate variable value within the range of 34 to 43
class sample;
  rand int a ;

  constraint cons_1{
    a > 34;
    a < 43;}

endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Data is: %d", s.a);
      $display("===================================");
    end
  end  
endmodule

