/*
11. Without using randomization or rand keyword, generates array of random values.
*/

module top;
  shortint arr[];
  initial begin
    arr = new[10];
    foreach (arr[i]) begin
      arr[i] = $urandom_range(10,70);
    end  
    
    $display("Array: %0p", arr);
    
  end
  
endmodule 
