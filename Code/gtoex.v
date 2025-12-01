`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 14:18:36
// Design Name: 
// Module Name: gtoex
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


module gtoex(
    input [3:0]g,
    output [3:0]ex, output error
    );
    wire [3:0]b;
    gtob m1 (.g(g), .b(b));
    btoex m2 (.b(b), .ex(ex), .error(error));
    
endmodule
