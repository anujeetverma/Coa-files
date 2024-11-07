`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2024 05:21:33
// Design Name: 
// Module Name: syncUp
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


module TFlipFlop(
    input t,clk,
    output q,qbar
);
    reg q;
    initial q = 0;  // Ensure q is initialized properly
    
    always @(posedge clk)
    begin
        if (t == 0)
            q <= q;
        else if (t == 1)
            q <= ~q;
    end
    assign qbar = ~q;
endmodule

module syncUp(
    input clk,
    output q0, q1, q2
);
    wire t0, t1, t2;
    assign t0 = 1;
    assign t1 = t0 & q0;
    assign t2 = t1 & q1;
    
    TFlipFlop FF0 (.t(t0), .clk(clk), .q(q0));
    TFlipFlop FF1 (.t(t1), .clk(clk), .q(q1));
    TFlipFlop FF2 (.t(t2), .clk(clk), .q(q2));
endmodule

