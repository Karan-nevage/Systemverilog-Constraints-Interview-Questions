/* 56. Generate a random real number between -2.35 to 4.32
 Generate a random value between 1.21 to 1.44 */

class sample;
  rand shortreal a;
  rand shortreal b;
  
  constraint cons{
    // In VCS you have to enable the constraint options for the floating point variables
	// Command: 	-xlrm floating_pnt_constraint
    a > -2.3 ; a < 4.32;
    b > 1.21 ; b < 1.44; 
  }
endclass

module top;
  sample s;
  
  initial begin
    s = new();
    assert(s.randomize());
    $display("A: %0f", s.a);
    $display("B: %0f", s.b);
  end 
endmodule