`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 15:27:32
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,clk,
    output q,q_bar
    );
    reg q=0;
    always @(posedge clk)
    begin
    if(t==0)
    q<=1;
    if(t==1)
    q<=0;
    end
    assign q_bar=~q;
endmodule
