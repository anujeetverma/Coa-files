`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 16:26:53
// Design Name: 
// Module Name: decoder_testbench
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


module decoder_testbench( );
reg t_a,t_b;
wire t_q0,t_q1,t_q2,t_q3;
decoder dut(.a(t_a), .b(t_b), .q0(t_q0), .q1(t_q1), .q2(t_q2),.q3(t_q3));
initial 
begin
t_a=0;t_b=0;#0.001
t_a=0;t_b=1;#0.001
t_a=1;t_b=0;#0.001
t_a=1;t_b=1;#0.001
$stop;
end
endmodule
