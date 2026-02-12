/* 12. Generate unique elements in an array without using the keyword unique. */

class sample;
  rand shortint arr[10];
    
  constraint cons_1{
    foreach (arr[i]){
      foreach (arr[j]){
        if(i != j) arr[i] != arr[j];      
      }    
    }  
  }
        
	constraint cons_2{
      foreach(arr[j]){
        arr[j] inside {[10:24]}; 
      } 
    }
        
   function void post_randomize();
      $display("Array: %p", arr);
   endfunction
      
endclass
        
module top;
  sample s;
  
  initial begin
    s = new();
    assert(s.randomize());  
  end  
endmodule
