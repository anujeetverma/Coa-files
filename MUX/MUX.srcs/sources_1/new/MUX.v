`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 15:03:29
// Design Name: 
// Module Name: MUX
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


module mux(
    input D0,D1,D2,D3,S0,S1,
    output M
    );
    wire s0,s1,s2,s3,nS0,nS1;
    not_gate NA1(S0,nS0);
    not_gate NA2(S1,nS1);
    and_gate A1(nS0,nS1,D0,s0);
    and_gate A2(nS0,S1,D1,s1);
    and_gate A3(S0,nS1,D2,s2);
    and_gate A4(S0,S1,D3,s3);
    or_gate O1(s0,s1,s2,s3,M);
endmodule
