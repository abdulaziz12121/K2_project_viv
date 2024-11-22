`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 03:03:20 PM
// Design Name: 
// Module Name: Program_Counter
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
/*
module Program_Counter(
    input clk, reset,
    input [2:0] imm,
    input enJump,
    output reg [3:0] address
);

    // Internal logic for counting
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            address <= 4'b0; // Reset address to 0
        end else if (enJump) begin
            address <= {0,imm}; // Jump to immediate value
        end else begin
            address <= address + 1; // Increment address
        end
    end

endmodule
*/

module Program_Counter(
    input clk, reset,
    input [2:0] imm,
    input enJump, // Jump enable signal
    output reg [3:0] address // 4-bit address output
);

    // Program counter logic
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            address <= 4'b0; // Reset address to 0 on reset
        end else if (enJump) begin
            address <= {1'b0, imm}; // Jump to address formed by imm (3 bits) + leading 0
        end else begin
            address <= address + 1; // Increment address normally
        end
    end

endmodule
