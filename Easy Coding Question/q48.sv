// 48. Generate a random number between -5 to -15 using system tasks.
module top;
  int num;

  initial begin
    repeat(10) begin
      num = $urandom_range(-15, -5);

      $display("Number: %0d ",num);
      $display("===========================");
    end
  end 

endmodule