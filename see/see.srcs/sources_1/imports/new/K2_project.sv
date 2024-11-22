`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 01:46:45 PM
// Design Name: 
// Module Name: K2_project
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
module Register1(input clk,en,reset,
input [7:0]D,  
output [7:0]Q);
*/
/*module K2_project(
input clk,reset,
//output [7:0]Register_RA_out,Register_RB_out,Register_RO_out
output  [3:0]address,
output   J,C,Sreg,S,
output  [1:0]D,
output  [2:0]imm_out
    );    
    
logic enW,en,Sd,Jseg,SD; // flags
//logic J,C,Sreg,S ; 
//logic [1:0]D;

assign enW = (D[0]&D[1]) & ~(J|C);
assign Jseg = J & ~(Sreg); // in JC MUX
assign SD = J & Sreg ; 
//
//
logic [7:0]ALU_out;



//logic [3:0]address; 

//logic [2:0]imm_out;
logic [7:0]imm_extended;

logic mux4bits_out;

logic [7:0]mux1_out;

logic en_decoder_out;

//address memory
logic [7:0]address_memory_out;
//logic [2:0]address_memory_address_in;

//mux2 
logic [7:0]mux2_out;



//ALU
wire zero,carry;

//


//D_flip
wire D_flip_Carry_out;

wire D_flip_Zero_out;

//mux_4bits
wire [1:0]JC;

assign JC = {J,C};


Program_Counter pc(.clk(clk),.reset(reset),.imm(imm_out),.enJump(1),.address(address));//f

ROM R(.address(address), .j(J), .c(C), .sreg(Sreg), .s(S),.D(D),.imm(imm_out));//f
*/
/*

assign imm_extended = {5'b00000,imm_out};//f


mux_alu_imm m1(.ALU(ALU_out),.imm(imm_extended),.sreg(Sreg),.out(mux1_out));//ff


address_memory add(.data_in(Register_RA_out),.en_w(enW),.clk(clk),.address(imm_out), 
.data_out(address_memory_out));



mux_memory_mux m2(.mux(mux1_out),.memory(address_memory_out),.sd(SD),.out(mux2_out));


decoder de (.D(D),.en(en_decoder_out));//f

Register1 RA(.clk(clk),.en(en_decoder_out),.reset(reset),.D(mux2_out),.Q(Register_RA_out));//f


Register1 RB(.clk(clk),.en(en_decoder_out),.reset(reset),.D(mux2_out),.Q(Register_RB_out));//f



Register1 RO(.clk(clk),.en(en_decoder_out),.reset(reset),.D(Register_RA_out),.Q(Register_RO_out));//f

ALU alu (.A(Register_RA_out),.B(Register_RB_out),.s(S),.out(ALU_out),.cout(carry),.zero(zero));//f



D_flip_2 Cout (.D(carry),.clk(clk),.en(en),.reset(reset),.Q(D_flip_Carry_out));//ff


D_flip_2 Zero (.D(zero),.clk(clk),.en(en),.reset(reset),.Q(D_flip_Zero_out));//ff


mux4 m4 (.cout(D_flip_Carry_out), .zero(D_flip_Zero_out), .j_and_not_seg(Jseg),.jc(JC), 
.out(mux4bits_out));



*/
/*
module K2_project(
    input clk,
    input reset,
    output reg [3:0] address,    // Program counter output
    output J, C, Sreg, S,     // Signals from ROM
    output [1:0] D,           // Signals from ROM
    output [2:0] imm_out      // Immediate value output
);    

    // Internal signals
    wire enJump;            // Jump enable signal for Program Counter
    wire [2:0] imm_value;   // Immediate value from ROM

    // Assign a fixed value or a logic to control `imm_out`
    assign imm_out = imm_value;  // Connecting the `imm_out` to `imm_value`

    // Control signal for jump, for now set to 1 (always jump)
    assign enJump = 1;          // You can modify this logic to control jumping

     
    Program_Counter pc(
        .clk(clk),
        .reset(reset),
        .imm(imm_out),
        .enJump(enJump),
        .address(address)
    );

    // ROM Instance
 
    ROM R(
        .address(address), 
        .j(J), 
        .c(C), 
        .sreg(Sreg), 
        .s(S),
        .D(D),
        .imm(imm_value)  // Pass the ROM immediate value output to `imm_out`
    );

endmodule
*//*module Main(
    input clk,                // Clock signal
    input reset,
    input en,
    output enJump,enW,SD,                  // Reset signal
    output  [3:0] address,     // Program Counter address output
    output  j, c, sreg, s,     // Control signals from ROM
    output  [1:0] D,JC,          // Control signals from ROM
    output  [2:0] imm_out,     // Immediate value from ROM
    output  [7:0] mux1_out,     // Output from mux_alu_imm
    output [3:0]en_decoder_out,
    output  mux2_out,
    output  data_out,
    output [7:0]Register_RA_out,Register_RB_out,Register_RO_out,ALU_out,imm_extended,
    output carry,zero,D_flip_Carry_out,D_flip_Zero_out,
    output mux4bits_out,Jseg
    
         
);

    // Internal signals
   // wire enJump;              // Enable Jump signal
    //wire enW;                 // Enable write signal
    //wire SD;                  // Additional flag (optional, not used directly here)
    //wire [7:0] imm_extended;  // Extended immediate value
    //wire ALU_out;             // ALU output signal
    //wire address_memory_out;
    

    // Combinational logic for control signals
    assign enW = (D[0] & D[1]) & ~(j | c); // Example write-enable logic
    assign  SD= j & sreg;              // Jump enable logic based on j and sreg
    assign enJump = j & ~sreg;                 // Additional flag for optional usage
    assign JC = {j,c};

    // Instantiate ROM
    ROM rom(
        .address(address),    // Address from Program Counter
        .j(j), 
        .c(c), 
        .sreg(sreg), 
        .s(s), 
        .D(D), 
        .imm(imm_out)         // Immediate value output
    );

    // Instantiate Program Counter
    Program_Counter pc(
        .clk(clk), 
        .reset(reset), 
        .imm(imm_out),        // Immediate value from ROM
        .enJump(mux4bits_out),      // Controlled jump signal
        .address(address)     // Program Counter address output
    );

    // Extend the immediate value to 8 bits

    // Instantiate mux_alu_imm
    mux_alu_imm m1(
        .ALU(ALU_out),
        .imm(imm_out),
        .sreg(sreg),
        .out(mux1_out)
    );
   
    decoder de (
    .D(D),
    .en(en_decoder_out));//f
   
   
    mux_memory_mux m2(
    .mux(mux1_out),
    .memory(data_out),
    .sd(SD),
    .out(mux2_out));
    
    address_memory ad (
        .data_in(Register_RA_out),
        .en_w(enW),                     /////
        .clk(clk),
        .address(imm_out),
        .data_out(data_out)
    ); 
    
Register1 RA(.clk(clk),.en(en_decoder_out[0]),.reset(reset),.D(mux2_out),.Q(Register_RA_out));//f


Register1 RB(.clk(clk),.en(en_decoder_out[1]),.reset(reset),.D(mux2_out),.Q(Register_RB_out));//f



Register1 RO(.clk(clk),.en(en_decoder_out[2]),.reset(reset),.D(Register_RA_out),.Q(Register_RO_out));//f

 //ALU

        ALU alu (
        .A(Register_RA_out),
        .B(Register_RB_out),
        .s(s),
        .out(ALU_out),
        .cout(carry),
        .zero(zero));//f

    //FF
    D_flip_2 Cout (.D(carry),.clk(clk),.en(en),.reset(reset),.Q(D_flip_Carry_out));//ff


    D_flip_2 Zero (.D(zero),.clk(clk),.en(en),.reset(reset),.Q(D_flip_Zero_out));//ff
    
    mux4 m4 (.cout(D_flip_Carry_out), .zero(D_flip_Zero_out), 
    .j_and_not_seg(enJump),.jc(JC), .out(mux4bits_out));

endmodule
*/


module Main(
    input clk,                // Clock signal
    input reset,              // Reset signal
    input en,                 //enable 
    output enJump,            // Enable Jump signal
    output enW,               // Write Enable signal
    output SD,                // Selector signal
    output [3:0] address,     // Program Counter address output
    output j, c, sreg, s,     // Control signals from ROM
    output [1:0] D, JC,       // Control signals
    output [2:0] imm_out,     // Immediate value from ROM
    output [7:0] mux1_out,mux2_out,    // Output from mux_alu_imm
    output [3:0] en_decoder_out, // Decoder enable output
    output [7:0] data_out,    // Data output from memory
    output [7:0] Register_RA_out, Register_RB_out, Register_RO_out, ALU_out, imm_extended, // Register and ALU outputs
    output carry, zero,       // Carry and Zero flags
    output D_flip_Carry_out, D_flip_Zero_out, // Flip-flop outputs
    output mux4bits_out       // Mux output
);

   
    // Control signals
    assign enW = (D[0] & D[1]) & ~(j | c); // Example write-enable logic
    assign SD = j & sreg;                  // Selector for mux_memory_mux
    assign enJump = j & ~sreg;             // Jump enable logic
    assign JC = {j, c};                    // Concatenated jump and carry signals

    // Instantiate ROM
    ROM rom (
        .address(address),    // Address from Program Counter
        .j(j), 
        .c(c), 
        .sreg(sreg), 
        .s(s), 
        .D(D), 
        .imm(imm_out)         // Immediate value output
    );

    // Instantiate Program Counter
    Program_Counter pc (
        .clk(clk), 
        .reset(reset), 
        .imm(imm_out),        // Immediate value from ROM
        .enJump(mux4bits_out), // Controlled jump signal
        .address(address)     // Program Counter address output
    );

    
    // Instantiate mux_alu_imm
    mux_alu_imm m1 (
        .ALU(ALU_out),
        .imm(imm_out),
        .sreg(sreg),
        .out(mux1_out)
    );

    // Instantiate decoder
    decoder de (
        .D(D),
        .en(en_decoder_out)
    );

    // Instantiate mux_memory_mux
    mux_memory_mux m2 (
        .mux(mux1_out),
        .memory(data_out),
        .sd(SD),
        .out(mux2_out)
    );

    // Instantiate address_memory
    address_memory ad (
        .data_in(Register_RA_out),
        .en_w(enW),
        .clk(clk),
        .address(imm_out),
        .data_out(data_out)
    ); 

    // Registers
    Register1 RA (
        .clk(clk),
        .en(en_decoder_out[0]),
        .reset(reset),
        .D(mux2_out),
        .Q(Register_RA_out)
    );

    Register1 RB (
        .clk(clk),
        .en(en_decoder_out[1]),
        .reset(reset),
        .D(mux2_out),
        .Q(Register_RB_out)
    );

    Register1 RO (
        .clk(clk),
        .en(en_decoder_out[2]),
        .reset(reset),
        .D(Register_RA_out),
        .Q(Register_RO_out)
    );

    // ALU
    ALU alu (
        .A(Register_RA_out),
        .B(Register_RB_out),
        .s(s),
        .out(ALU_out),
        .cout(carry),
        .zero(zero)
    );

    // D Flip-Flops
    D_flip_2 Cout (
        .D(carry),
        .clk(clk),
        .en(en),
        .reset(reset),
        .Q(D_flip_Carry_out)
    );

    D_flip_2 Zero (
        .D(zero),
        .clk(clk),
        .en(en),
        .reset(reset),
        .Q(D_flip_Zero_out)
    );

    // 4-bit mux
    mux4 m4 (
        .cout(D_flip_Carry_out),
        .zero(D_flip_Zero_out), 
        .j_and_not_seg(enJump),
        .jc(JC),
        .out(mux4bits_out)
    );

endmodule


/*

*/

