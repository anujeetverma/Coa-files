`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 15:28:44
// Design Name: 
// Module Name: t_ff_testbench
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


module t_ff_testbench();
reg T;
reg clk_tb=0;
always #5 clk_tb=~clk_tb;
wire Q,Q_bar;
t_ff dut(.t(T),.clk(clk_tb),.q(Q),.q_bar(Q_bar));
initial
begin
T<=0;#20
T<=1;#20
$stop;
end
endmodule
