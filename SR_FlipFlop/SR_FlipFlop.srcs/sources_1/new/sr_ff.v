`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 14:39:26
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
    input s,r,clk,
    output q,q_bar
    );
    reg q =0;
    always@(posedge clk)
    begin
    if(s==0 && r==0)
    q<=q;
    if(s==1 && r==0)
    q<=1;
    if(s==0 && r==1)
    q<=0;
    if(s==1 && r==1)
    q<=1'bx;
    end
    assign q_bar =~q;
endmodule
