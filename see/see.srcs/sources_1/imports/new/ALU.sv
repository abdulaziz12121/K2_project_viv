`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 09:02:15 AM
// Design Name: 
// Module Name: ALU
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
module ALU (
    input [7:0] A, B,    // 8-bit inputs
    input s,             // Operation selector: 0 for addition, 1 for subtraction
    output reg [7:0] out, // 8-bit result
    output reg cout,     // Carry-out for addition
    output reg zero      // Zero flag
);

    always @(*) begin
        // Default values to prevent latches
        out = 8'h0;
        cout = 1'b0;
        zero = 1'b0;

        if (s) begin
            // Subtraction
            out = A - B;
        end else begin
            // Addition with carry-out
            {cout, out} = A + B;
        end

        // Zero flag
        zero = (out == 8'h0) ? 1'b1 : 1'b0;
    end
endmodule
