module adder(A,B,CARRY_IN,SUM,CARRY_OUT);
    input [7:0] A,B;
    input CARRY_IN;
    output [7:0] SUM;
    output CARRY_OUT;

    assign {CARRY_OUT, SUM} = A + B + CARRY_IN;

endmodule
