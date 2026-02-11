/*
9. Given a 16 bit address fields as a class member, write a constraint to generate a random value such that it always has 9 bit as 1 and 111 or 000 sequence should not occur in that address
*/

class sample;
  rand bit[15:0] addr;
  
  constraint cons_1{
    addr[9] == 1;
    foreach (addr[i]){
      if(i<14){
      	0 == ( addr[i] && addr[i+1] && addr[i+2]);
        1 == ( addr[i] || addr[i+1] || addr[i+2]);}
    	}
    }
  
endclass
      
module top;
  sample s;
	initial begin
      s = new();
      assert(s.randomize());
      $displayb("Address: %b", s.addr);
      $display("===========================================");
    end 
endmodule
