module khalf_adder(
    a,b,c,
    sum,c_out
);
    input wire a,b,c;
    output wire sum,c_out;

    //assign (sum,c_out) = a + b;
    assign sum = a ^ b;
    assign c_out = a & b;
    
endmodule
