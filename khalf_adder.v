module khalf_adder(
    a,b,
    sum,c_out
);
    input wire a,b;
    output wire sum,c_out;

    //assign (sum,c_out) = a + b;
    assign sum = a ^ b;
    assign c_out = a & b;
    
endmodule
