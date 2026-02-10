// 52. generate random number between 100, 200, which is a multiple of 5

class sample;
  rand int num ;
  
  constraint cons_1{
    num inside {[100:200]};
    (num % 5) == 0;
  }
    
endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Number: %d", s.num);
      $display("===================================");
    end
  end  
endmodule

