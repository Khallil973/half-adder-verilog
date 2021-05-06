`timescale 1ns/1ns
//`include "khalf_adder.v"
module khalf_adder_tb;
initial begin
$dumpfile("test.vcd");
$dumpvars(0,khalf_adder_tb);

end 

reg a_tb,b_tb;
wire sum_tb,c_out_tb;

khalf_adder khalf_adder_1 (
    .a(a_tb),
    .b(b_tb),
    .sum(sum_tb),
    .c_out(c_out_tb)
);
khalf_adder khalf_adder_2(
    .a(a_tb),
    .b(b_tb),
    .sum(sum_tb),
    .c_out(c_out_tb)
);
initial begin
        a_tb = 0'b0;
        b_tb = 1'b0;
        #5
        a_tb = 1'b0;
        b_tb = 1'b1;
        #5
       
        $finish;
    end

endmodule