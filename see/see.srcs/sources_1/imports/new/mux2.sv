`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 09:31:39 AM
// Design Name: 
// Module Name: mux2
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

//module ALU(input [7:0]A,B,input s,output reg [7:0] out,output reg cout,zero);

module mux2 (
    input [7:0] ALU,          // ALU output
    input [2:0] imm,          // 3-bit immediate value
    input sreg,               // Selector for output
    output reg [7:0] out      // Selected output
);

    // Internal signal for zero-extended immediate value
    wire [7:0] imm_extended;

    // Perform zero-extension
    assign imm_extended = {5'b00000, imm};

    always @(*) begin
        if (sreg)
            out = imm_extended; // Select zero-extended immediate value
        else
            out = ALU;          // Select ALU output
    end
endmodule
