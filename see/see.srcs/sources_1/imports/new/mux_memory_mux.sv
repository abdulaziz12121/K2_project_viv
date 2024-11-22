`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:56:58 AM
// Design Name: 
// Module Name: mux_memory_mux
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

module mux_memory_mux(
    input  [7:0] mux,           // ALU output
    input  [7:0] memory,        // Memory value
    input sd,                  // Selector for output
    output reg [7:0] out       // Output of the mux
);

    always @(*) begin
        if (sd)
            out = memory;      // Select memory value
        else
            out = mux;         // Select ALU output
    end

endmodule
