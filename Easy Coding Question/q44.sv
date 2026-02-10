// 44. Write a constraint for APB slave select signal
class sample;
  rand bit[3:0] selx ;

  constraint cons_1{
    $onehot(selx);}

endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Selected Slave is: %b", s.selx);
      $display("===================================");
    end
  end  
endmodule

