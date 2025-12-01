`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 22:39:32
// Design Name: 
// Module Name: bcdtoex
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


module bcdtoex(
    input [7:0]bcd,
    output [3:0]ex, output error
    );
    wire [3:0]b;
    wire [1:0]errort;
    bcdtob m1(.b(b), .bcd(bcd), .error(errort[0]));
    btoex m2 (.b(b), .ex(ex),.error(errort[1]));
    assign error = |errort;
endmodule
