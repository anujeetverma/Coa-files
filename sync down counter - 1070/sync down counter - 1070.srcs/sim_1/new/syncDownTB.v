`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2024 05:27:45
// Design Name: 
// Module Name: syncDownTB
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


module syncDownTB();
    reg CLK = 0;
    always #1 CLK = ~CLK;  
    wire Q0, Q1, Q2;
    syncDown dut(.clk(CLK), .q0(Q0), .q1(Q1), .q2(Q2));
   
    initial
    begin
        #16  
        $stop;
    end
endmodule
