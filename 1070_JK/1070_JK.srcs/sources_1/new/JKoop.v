`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 09:00:52
// Design Name: 
// Module Name: JKoop
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


module JKoop(
    input j,
    input k,
    input clk,
    output q,
    output q_bar
    );
reg q = 0;
    always @ (posedge clk) 
          begin
             case ({j,k})
                   2'b00: q <= q;      
                   2'b01: q <= 0;      
                   2'b10: q <= 1;      
                   2'b11: q <= ~q;     
              endcase
          end
       assign q_bar = ~q;
endmodule

