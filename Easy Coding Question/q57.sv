/* 57. Generate a random real number between -2.35 to -4.32 */
//******************* Cadance Xcelium ***********************\\

class sample;
  rand real a;

  constraint cons{
    // In VCS you have to enable the constraint options for the floating point variables
    // Command: 	-xlrm floating_pnt_constraint
    a < -2.35 ; 
    a > -4.32 ;
  }
endclass

module top;
  sample s;

  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display("A: %0f", s.a);
    end 
  end
endmodule