`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 06:36:53 PM
// Design Name: 
// Module Name: k2_test
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

module Main_tb;

    // Testbench signals
    reg clk;                  // Clock signal
    reg reset,en;                // Reset signal
    wire enJump,enW,SD;              // Jump enable signal
    wire [3:0] address;       // Address from Program Counter
    wire j, c, sreg, s;       // Control signals from ROM
    wire [1:0] D,JC;             // Control signals from ROM
    wire [2:0] imm_out;       // Immediate value from ROM
    wire [7:0] mux1_out,mux2_out;      // Output from mux_alu_imm
    wire [3:0]en_decoder_out;
    wire [7:0]data_out;
    wire [7:0]Register_RA_out,Register_RB_out,Register_RO_out
    ,ALU_out;
    wire carry,zero,D_flip_Carry_out,D_flip_Zero_out,mux4bits_out;
    // Instantiate the Main module
    Main uut (
        .clk(clk),
        .reset(reset),
        .en(en),
        .enJump(enJump),
        .enW(enW),
        .SD(SD),
        .address(address),
        .j(j),
        .c(c),
        .sreg(sreg),
        .s(s),
        .D(D),
        .JC(JC),
        .imm_out(imm_out),
        .mux1_out(mux1_out),
        .en_decoder_out(en_decoder_out),
        .mux2_out(mux2_out),
        .data_out(data_out),
        .Register_RA_out(Register_RA_out),
        .Register_RB_out(Register_RB_out),
        .Register_RO_out(Register_RO_out),
        .ALU_out(ALU_out),
        .carry(carry),
        .zero(zero),
        .D_flip_Carry_out(D_flip_Carry_out),
        .D_flip_Zero_out(D_flip_Zero_out),
        .mux4bits_out(mux4bits_out)
    );

    // Clock generation
    always #5 clk = ~clk; // 100 MHz clock (10 ns period)

    // Testbench procedure
    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;
        en=1;
        // Apply reset
        $display("Applying reset...");
        reset = 1;
        #10;
        reset = 0;
        #10;
        reset = 1;
        #50000
        // Wait for a few clock cycles to observe outputs
        $display("Running simulation...");
        repeat(30) @(posedge clk);

        // End simulation
        $display("Simulation complete.");
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor($time, 
                 " clk=%b, reset=%b, enJump=%b, address=%b, j=%b, c=%b, sreg=%b, s=%b, D=%b, imm_out=%b, mux1_out=%b",
                 clk, reset, enJump, address, j, c, sreg, s, D, imm_out, mux1_out);
    end

endmodule








