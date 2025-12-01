`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 11:40:15
// Design Name: 
// Module Name: bcdtob
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


module bcdtob(
    input [7:0]bcd,
    output reg [3:0]b, output reg error
    );
    reg [4:0]temp;
    always @(*)
    begin 
    if(bcd[7:4]==4'b0000 && bcd[3:0]<=4'd9)
    begin
    b=bcd[3:0];
    error=0;
    end
     else
     begin
     if(bcd[7:4]==4'b0001 && bcd[3:0]<=4'd5)
     begin
          temp=bcd[3:0] + 5'd10;
          b=temp[3:0];
          error=0;
     end
    else
    begin
    error=1;
    b=4'bx;
    end
    end
    end
endmodule
