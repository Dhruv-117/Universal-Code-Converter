`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 14:27:42
// Design Name: 
// Module Name: extog
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


module extog(
    input [3:0] ex,
    output [3:0] g, 
    output error
    );
    wire [3:0]b;
    extob m1 (.ex(ex), .b(b), .error(error));
    btog m2 (.b(b), .g(g));

endmodule
