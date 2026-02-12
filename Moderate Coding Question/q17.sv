/* 
17.Factorial of first 5 even numbers using constraints  */

class sample;
  rand int arr[5];
  	   int fact[5];
  
  constraint cons_1{
    unique{arr};
    foreach (arr[i]){
      arr[i] inside {0,2,4,6,8};
    }  }
      
  function int factorial(int n);
    if(n == 0) factorial = 1;
    else begin
    	for (int i= 1; i <= n; i = i+1) begin
      		if (factorial == 0) factorial = 1;
      		factorial = i*factorial;
        end
	end    
  endfunction
      
  function void post_randomize();
    foreach(arr[i]) begin
      fact[i] = factorial(arr[i]);
    end
    
    $display("Array of Even Numbers: %p", arr);
    $display("Factorial of Numbers : %p", fact);
    $display("====================================");
  endfunction
endclass

module top;
  sample s;
  
  initial begin
    s = new();
    repeat(5) begin
      assert(s.randomize());
    end
  end    
endmodule
