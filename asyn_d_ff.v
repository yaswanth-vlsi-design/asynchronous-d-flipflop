
module asyn_d_ff (
    input d,      
    input clk,      
    input rst,     
    output reg q   
);

    always @(posedge clk or negedge rst) begin
        if (!rst) 
            q <= 1'b0;  
        else
            q <= d;     
    end

endmodule

