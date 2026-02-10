// 50. Soft constraint using eth_pkt where constraint len is 42 to 1500 and inline constraint with 2000 len.

class sample;
  rand int len ;
  
  constraint cons_1{
    soft {len inside {[42:1500]}};
  }
    
endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize with {s.len == 2000;});
      $display(" len: %d", s.len);
      $display("===================================");
    end
  end  
endmodule

