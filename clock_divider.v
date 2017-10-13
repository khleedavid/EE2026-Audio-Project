`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2017 03:53:41 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input CLK,
    input clockSpeed,
    output reg clk_new
    );
    reg count = 0;
    
    always @ (posedge CLK) begin
    count <= (count == clockSpeed) ? 0: count+1;
    clk_new <= (count == 0)? ~clk_new : clk_new;
    end
    
endmodule
