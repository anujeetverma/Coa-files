`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 15:30:44
// Design Name: 
// Module Name: DEMUX_testbench
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


module DEMUX_testbench();
reg t_s0,t_s1,t_i;
wire t_y0,t_y1,t_y2,t_y3;
DEMUX dut(.s0(t_s0), .s1(t_s1), .i(t_i), .y0(t_y0), .y1(t_y1), .y2(t_y2),.y3(t_y3));
initial 
begin
t_s0=0;t_s1=0;t_i=1;#0.001
t_s0=0;t_s1=1;t_i=1;#0.001
t_s0=1;t_s1=0;t_i=1;#0.001
t_s0=1;t_s1=1;t_i=1;#0.001
$stop;
end
endmodule
