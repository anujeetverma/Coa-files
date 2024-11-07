`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 05:36:35
// Design Name: 
// Module Name: d_ff_sim
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


module d_ff_sim();

    reg d;
    reg clk_tb = 0 ;
    always #5 clk_tb = ~clk_tb;
    
    wire q;
    wire q_bar;
    
    d_flip_flop dut (.D(d) , .clk(clk_tb) , .Q(q) , .Q_bar(q_bar));
    
    initial 
    begin
        d <= 0; #20
        d <= 1; #20
        $stop;
    end
endmodule
