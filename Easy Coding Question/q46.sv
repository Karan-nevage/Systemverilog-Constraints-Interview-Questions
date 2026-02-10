// 46. Multi bit vector, generate value with only one bit in vector being ‘1’

class sample;
  rand bit [16:0] a ;

  constraint cons_1{
    $onehot(a);}
endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Data is: %b", s.a);
      $display("===================================");
    end
  end  
endmodule

