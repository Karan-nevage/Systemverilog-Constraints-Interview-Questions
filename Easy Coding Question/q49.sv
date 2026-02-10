// Generate a,b,c,d in such a way that all of them take unique values, but all of them inside 10 to 20 only.

class sample;
  rand int a ;
  rand int b;
  rand int c;
  rand int d;

  constraint cons_1{
    a inside {[10:20]};
    b inside {[10:20]};
    c inside {[10:20]};
    d inside {[10:20]};  
  }
  
  constraint cons_2{
    unique {a,b,c,d};
  }
  
endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" A: %d", s.a);
      $display(" B: %d", s.b);
      $display(" C: %d", s.c);
      $display(" D: %d", s.d);
      $display("===================================");
    end
  end  
endmodule

