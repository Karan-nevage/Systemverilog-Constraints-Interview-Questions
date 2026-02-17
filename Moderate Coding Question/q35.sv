/* 35. Write constraint to generate a random number with only 5 bits set and consecutively set for 80% of the time*/

class sample;
 
  rand bit[15:0] a;
  rand int mode;
  rand int start_index;
  
    constraint cons_1 {
      $countones(a) == 5;
      mode dist{0 := 80 , 1 := 20 };
  	}	
        
  constraint cons_2{
    if (mode == 0){$countones(a) == 5;
          foreach(a[i]){
            if(i<15)   a[i] != a[i+1];
          }
      }
    else  a inside {16'b11111 << start_index};
  }
  
	function void post_randomize();
      $display("Value A: %b  || Mode: %d", a, mode);
      $display("=======================================");
	endfunction
    
endclass

//****************  Top Module  ************************

module top;
  sample s;

  initial begin
    s = new();
    
    repeat (30) begin
      assert(s.randomize());
    end
  end
endmodule

