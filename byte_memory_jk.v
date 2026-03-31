module byte_memory_jk(
    input j,
    input k, 
    input store,
    output reg memory
);

    initial begin
        memory <=0;
    end
    
    always @(posedge store)
        memory <= (j & ~memory) | (~k & memory);

endmodule
