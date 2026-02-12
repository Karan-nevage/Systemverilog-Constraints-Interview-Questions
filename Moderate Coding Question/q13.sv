/* 
13. Constraint to generate 1'bx and 1'bz randomly
a. Use post randomize to assign x and z based on other variable.
*/

class sample;
  logic val;
  rand bit post_val;
  
  function void post_randomize();
    if (post_val == 1) val = 1'bx;
    else val = 1'bz;
  endfunction  
endclass

module top;
  sample s;

  initial begin
    s = new();
    repeat(4) begin
      assert(s.randomize());
      $display("Value: %b", s.val);
      $display("=============================");
    end
  end    

endmodule
