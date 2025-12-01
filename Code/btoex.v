`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2025 20:08:52
// Design Name: 
// Module Name: btoex
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


module btoex(
    input [3:0]b,
    output reg [3:0]ex
    ,output reg error
    );
    always @(*)
    begin 
    if(b>5'd9)
    begin
    error=1;
    ex=4'bx;
    end
    else
    begin
    ex=b+4'd3;
    error=0;
    end
    end
endmodule 
