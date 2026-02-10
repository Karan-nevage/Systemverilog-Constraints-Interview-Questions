/*
55. Random number between 5 to 10 with weight of 5, -5 to -15 with weight of 10
*/
class sample;
  rand int num;
  
  constraint cons_1 {
    num dist{[-5:5] := 5 ,[-15:-5]:= 10};
  }
endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(15) begin
      assert(s.randomize());
      $display("Number: %0d", s.num);
      $display("===================================");
    end
  end  
endmodule
