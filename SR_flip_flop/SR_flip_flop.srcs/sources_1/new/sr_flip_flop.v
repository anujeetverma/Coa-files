`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 05:43:28
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
    input S,
    input R,
    input clk,
    output reg Q,
    output Q_bar
    );
    
    assign Q_bar = ~Q;
    
    always @(posedge clk) begin
        if(S && !R) begin
            Q <= 1;
        end else if(!S && R) begin
            Q <= 0;
        end
    end
endmodule
