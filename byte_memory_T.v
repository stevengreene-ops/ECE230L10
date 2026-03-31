module byte_memory_T(
    input t,
 
    input store,
    output reg memory
);

    initial begin
        memory <=0;
    end
    
    always @(posedge store)
        memory <= t ? ~memory : memory;

endmodule
