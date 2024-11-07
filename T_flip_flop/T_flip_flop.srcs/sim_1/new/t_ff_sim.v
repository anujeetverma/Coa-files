`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 05:30:12
// Design Name: 
// Module Name: t_ff_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module t_ff_sim();
    reg T;
    reg clk_tb = 0;
    reg reset_tb;
    always #5 clk_tb = ~clk_tb;
    
    wire q;
    wire q_bar;
    
    t_flip_flop dut(.T(t) , .clk(clk) , .reset(reset_tb) , .Q(q) , .Q_bar(q_bar));
    
    initial 
    begin
    
        reset_tb = 1;
        T <= 0;
        
        #10 reset_tb = 1;
        T <= 1; #20
        T <= 0; #20
        T <= 1; #20
        $stop;
    end
endmodule

