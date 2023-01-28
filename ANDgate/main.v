`timescale 1ns/1ns
module main ();
  reg a, b;
  wire c;
 
  AND_gate AND_gate(.a(a), .b(b), .c(c));
 
  initial begin
    $dumpvars;
    a = 0; b = 0;
    #100 a <= 0; b <= 0;
    #100 a <= 0; b <= 1;
    #100 a <= 1; b <= 0;
    #100 a <= 1; b <= 1;
    #100 $finish;
  end
endmodule
