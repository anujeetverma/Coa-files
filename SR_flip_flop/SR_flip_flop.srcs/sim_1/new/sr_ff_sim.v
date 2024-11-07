`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 05:43:49
// Design Name: 
// Module Name: sr_ff_sim
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


module sr_ff_sim();

    reg S;
    reg R;
    reg clk_tb = 0 ;
    always #5 clk_tb = ~clk_tb;
    
    wire q;
    wire q_bar;
    
    sr_flip_flop dut (.S(S) , .R(R) , .clk(clk_tb) , .Q(q) , .Q_bar(q_bar));
    
    initial
    begin
        S <= 0; R <= 0; #10
        S <= 1; R <= 0; #10
        S <= 0; R <= 1; #10
        S <= 0; R <= 0; #10
        S <= 1; R <= 0; #10
        S <= 1; R <= 1; #10
        $stop;
    end
endmodule
