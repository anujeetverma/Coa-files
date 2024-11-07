`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 15:08:34
// Design Name: 
// Module Name: MUX_Testbench
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


module mux_tb();
reg s0,s1,d0,d1,d2,d3;
wire m;
mux dut (.S0(s0),.S1(s1),.D0(d0),.D1(d1),.D2(d2),.D3(d3),.M(m));
initial
begin
s0=0;s1=0;d0=0;d1=1;d2=0;d3=0;#0.001
s0=0;s1=1;d0=1;d1=1;d2=0;d3=0;#0.001
s0=1;s1=0;d0=1;d1=1;d2=0;d3=0;#0.001
s0=1;s1=1;d0=0;d1=1;d2=0;d3=0;#0.001
$stop;
end
endmodule