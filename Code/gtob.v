`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 11:34:35
// Design Name: 
// Module Name: gtob
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


module gtob(input[3:0]g, output[3:0]b);
assign b[3]=g[3];
assign b[2]=g[3]^g[2];
assign b[1]=g[3]^g[2]^g[1];
assign b[0]=g[3]^g[2]^g[1]^g[0];
endmodule
