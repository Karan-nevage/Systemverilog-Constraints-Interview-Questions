// 39. Write a single constraint to generate random values for a bit [8:0] variable in the below ranges:
// 1–54, 127, 137–166, 196–209, and 231–262.

class sample;
  rand bit [8:0] a;

  constraint cons_1{
    a inside {[1:54], 127, [137:166],[196:209], [231:262]};
  }  

endclass


module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Value of \n A = %d", s.a);

    end
  end  
endmodule

