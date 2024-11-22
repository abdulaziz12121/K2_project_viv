`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 10:14:28 AM
// Design Name: 
// Module Name: mux_alu_imm
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

module mux_alu_imm (
    input reg [7:0] ALU,          // ALU output
    input reg [2:0] imm,          // 3-bit immediate value
    input sreg,               // Selector for output
    output reg [7:0] out      // Selected output
);

    // Internal signal for zero-extended immediate value
    reg [7:0] imm_extend;

    // Perform zero-extension
    assign imm_extend = {5'b00000, imm};

    always @(*) begin
        if (sreg)
            out = imm_extend; // Select zero-extended immediate value
        else
            out = ALU;          // Select ALU output
    end
endmodule

