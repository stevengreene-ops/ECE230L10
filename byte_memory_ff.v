module byte_memory_ff(
    input data,
    input store,
    output reg memory
);

    initial begin
        memory <=0;
    end
    
    always @(posedge store)
        memory <= data;

endmodule
