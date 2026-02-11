/*
6. Write the constraint to gen following pattern using array
a. 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 1 0 2 0 3 0 4 0 5 ...
b. 0 0 1 0 0 2 0 0 3 0 0 4 .... 0 0 9 0 0 1 0 0 2...
*/

class sample;
  rand shortint arr_a[];
  rand shortint arr_b[];

  function void pre_randomize();
    arr_a = new[30];
    arr_b = new[30];
  endfunction

  constraint cons_1{
    foreach (arr_a[i]) {
      if (i % 2 == 0)
        arr_a[i] == 0; 
      else
        arr_a[i] == ((i/2) % 9) + 1; 
    }}
      
  constraint cons_2{
    foreach (arr_b[i]){
      if (i % 3 == 0 || i % 3 == 1) arr_b[i] == 0; 
      else arr_b[i] == (((i/3) % 9) + 1);    
    }
  }
endclass
      
module top;
  sample s;

  initial begin
    s = new();
    repeat (1) begin
      assert(s.randomize());
      $display("Array a: %p ", s.arr_a);
      $display("Array b: %p ", s.arr_b);
      $display("=====================================================");
    end   
  end
endmodule

