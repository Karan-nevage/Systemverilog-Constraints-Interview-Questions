/*10. Randomize a value with even and odd values alternatively.
*/

class sample;
  rand shortint val;
  rand bit flag;
  shortint temp;
  
  function void pre_randomize();
    if(temp % 2 == 0) flag = 0; 
    if(temp % 2 == 1) flag = 1; 
  endfunction
  
  constraint cons_1{
    if (flag == 0) val % 2 == 1;
    if (flag == 1) val % 2 == 0;
 }
  
  function void post_randomize();
   temp = val;
  endfunction
  
endclass
      
module top;
  sample s;
	initial begin
      s = new();
      repeat (10) begin
      	assert(s.randomize());
        $displayb("Address: %d ", s.val);
      	$display("===================================");
      end
    end 
endmodule
