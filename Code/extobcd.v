`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 14:24:11
// Design Name: 
// Module Name: extobcd
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


module extobcd(
    input [3:0] ex,
    output [7:0] bcd,
    output error
    );
    wire errort;
    wire [3:0]b;
    extob m1 (.ex(ex), .b(b), .error(errort));
    btobcd m2 (.b(b), .bcd(bcd));
    assign error=errort;
    
endmodule
