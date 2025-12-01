`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 20:54:57
// Design Name: 
// Module Name: bcdtog
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


module bcdtog(
    input [7:0]bcd,
    output [3:0]g, output error
    );
    wire [3:0]b;
    wire errort;
    bcdtob m1(.b(b), .bcd(bcd), .error(errort));
    btog m2 (.b(b), .g(g));
    assign error = errort;
endmodule
