module top(
    input [3:0] sw,
    input btnC,
    output[5:0]led
    );
    
    wire q_ff;
    wire q_jk;
    wire q_t;
    
    byte_memory_ff d_latch (
        .data(sw[0]),
        .store(btnC),
        .memory(q_ff)
    );
    
    assign led[0] = q_ff;
    assign led[1] = ~q_ff;
    
    byte_memory_jk jk_latch ( 
        .j(sw[1]),
        .k(sw[2]),
        .store(btnC),
        .memory(q_jk)
    );
    
    assign led[2] = q_jk;
    assign led[3] = ~q_jk;
    
    byte_memory_T t_latch (
        .t(sw[3]),
        .store(btnC),
        .memory(q_t)
    );
    
    assign led[4] = q_t;
    assign led[5] = ~q_t;
        
    
endmodule
