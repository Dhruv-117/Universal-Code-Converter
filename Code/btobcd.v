`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2025 11:21:51
// Design Name: 
// Module Name: btobcd
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


module btobcd(
    input [3:0]b,
    output reg [7:0]bcd
    );
    always@(*)
    begin 
    if(b>4'd9)
    bcd={4'b0001,b+4'd6};
    else
    bcd = {4'b000,b};
    end
endmodule
