`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 09:02:27
// Design Name: 
// Module Name: JK01
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

module JK01();
reg j;
reg k;  
reg clk;
wire q;
wire q_bar;
JKoop uut (
        .j(j), 
        .k(k), 
        .clk(clk), 
        .q(q), 
        .q_bar(q_bar)
    );

always #5 clk = ~clk;
initial begin
      clk = 0;
        j = 0;
        k = 0;
       
        $monitor("Time = %0t | j = %b, k = %b, clk = %b | q = %b, q_bar = %b", $time, j, k, clk, q, q_bar);
        #10 j = 0; k = 0;
        #10 j = 0; k = 1;
        #10 j = 1; k = 0;
        #10 j = 1; k = 1;

        #50 $finish;
end
endmodule
