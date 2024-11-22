`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:48:09 AM
// Design Name: 
// Module Name: D_flip_2
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


module D_flip_2(
    input D,       // Data input
    input clk,     // Clock input
    input en,      // Enable input
    input reset,   // Active-low reset input
    output reg Q   // Output
);

    always @(posedge clk or negedge reset) begin
        if (~reset)
            Q <= 0;  // Reset the output to 0
        else if (en)
            Q <= D;  // If enabled, capture the value of D on the clock edge
    end

endmodule
