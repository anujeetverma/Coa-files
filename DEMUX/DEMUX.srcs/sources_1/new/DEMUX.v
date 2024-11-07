`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 15:28:33
// Design Name: 
// Module Name: DEMUX
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


module DEMUX(
    input i,s0,s1,
    output y0,y1,y2,y3
    );
    assign y0=(~s0&~s1&i);
    assign y1=(~s0&s1&i);
    assign y2=(s0&~s1&i);
    assign y3=(s0&s1&i);

endmodule
