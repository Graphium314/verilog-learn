module test;
    reg [7:0] A,B;
    reg CARRY_IN;
    wire [7:0] SUM;
    wire CARRY_OUT;

    adder ADDER1(A,B,CARRY_IN,SUM,CARRY_OUT);

    initial
         begin
             $dumpvars;
                A = 8'h00; B = 8'h00; CARRY_IN = 1'b0;
            #20 A = 8'h02; B = 8'h03; CARRY_IN = 1'b0;
            #20 A = 8'h02; B = 8'h03; CARRY_IN = 1'b1;
            #20 A = 8'hFF; B = 8'h02; CARRY_IN = 1'b0;
            #20 A = 8'hFF; B = 8'h01; CARRY_IN = 1'b1;
            #20 $finish;
        end

endmodule
