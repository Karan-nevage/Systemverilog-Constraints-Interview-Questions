// 41. Write a constraint for a 16‑bit addr which should contain the 9ᵗʰ bit as 1

class sample;
  rand bit[15:0] a ;

  constraint cons_1{
    a[9] == 1'b1;}


endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Value of addr: \n A = %b", s.a);
      $display("===================================");
    end
  end  
endmodule

