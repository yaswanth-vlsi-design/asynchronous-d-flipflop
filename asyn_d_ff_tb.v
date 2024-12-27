module asyn_d_ff_tb;
    reg d;       
    reg clk;      
    reg rst;     
    wire q;       
    asyn_d_ff uut (
        .d(d),
        .clk(clk),
        .rst(rst),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        d = 0;
        rst = 0;
        #2 rst = 1;          
        #10 d = 1;  
        #10 d = 0; 
        #10 d = 1;  
        #5 rst = 0; 
        #5 rst = 1; 
        #10 d = 1; 
        #10 d = 0;
        #20 $stop;
    end

endmodule


