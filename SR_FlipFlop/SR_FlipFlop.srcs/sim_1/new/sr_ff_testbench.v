`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 14:42:35
// Design Name: 
// Module Name: sr_ff_testbench
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


module sr_ff_testbench();
reg S,R;
reg clk_tb=0;
always #5 clk_tb=~clk_tb;

wire Q,Q_bar;
sr_ff dut(.s(S),.r(R),.clk(clk_tb),.q(Q),.q_bar(Q_bar));

initial 
begin
S<=0;R<=0;#5
S<=0;R<=1;#20
S<=1;R<=0;#20
S<=1;R<=1;#20
$stop;
end
endmodule
