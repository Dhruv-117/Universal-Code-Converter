`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 23:06:37
// Design Name: 
// Module Name: ucctest
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
module ucctest();

    reg [7:0] in;
    reg [1:0] selin;
    reg [1:0] selout;

    wire [7:0] out;
    wire [4:0] output_;
    wire [4:0] input_;
    wire error;

    UCC uut (.in(in),.out(out),.errors(error),.output_(output_),.input_(input_),.selin(selin),.selout(selout));
    integer i, j, k;

    initial begin
       for(i=0; i<4; i=i+1) 
       begin
       selin=i[1:0];
       for(j=0; j<4; j=j+1)
       begin
       selout=j[1:0];
       in=8'b00000000;
       if(selin==2'b10)
       begin
       for(k=0;k<=32;k=k+1)
       begin
       #5 in=k;
       end
       end
       else
       begin
       for(k=0;k<=16;k=k+1)
       begin
       #5 in=k;
       end
       end
       end
       end
end
    

endmodule

