`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 23:16:39
// Design Name: 
// Module Name: gtobcd
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


module gtobcd(
    input [3:0]g,
    output [7:0]bcd
    );
    wire [3:0]b;
    gtob m1 (.b(b), .g(g));
    btobcd m2(.b(b), .bcd(bcd));
endmodule
