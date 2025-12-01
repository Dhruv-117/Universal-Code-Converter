`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 13:20:14
// Design Name: 
// Module Name: extob
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


module extob(
    input [3:0]ex,
    output reg [3:0]b, 
    output reg error
    );
    
    always @(*)
    if(4'd3<=ex && ex<=4'd12)
    begin
    error=0;
   b=ex-4'd3;
    end
    else
    begin
     error=1;
    b=4'bx;
    end
endmodule
