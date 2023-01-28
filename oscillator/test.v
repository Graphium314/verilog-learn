`timescale 1ns/1ns
module main ();
  wire o;
 
  oscillator oscillator(.o(o));
 
  initial begin
    $dumpvars;
    #100
    $finish;
  end
endmodule
