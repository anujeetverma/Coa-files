`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 05:12:59
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input T,
    input clk,
    input reset,
    output reg Q,
    output Q_bar
    );
    
    assign Q_bar = ~Q;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            Q <= 0;
        end else if (T) begin
            Q <= ~Q;
        end
    end
endmodule
