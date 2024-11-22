`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:30:38 AM
// Design Name: 
// Module Name: ROM
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
module ROM(
    input reg[3:0] address,
    output reg j, c, sreg, s,
    output reg [1:0] D,
    output reg [2:0] imm
);

reg [7:0] bytee; // Temporary register to hold 8-bit instruction

always @(*) begin
    case (address)
        4'h0: begin
            bytee = 8'b00001000; // Example instruction for address 0
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h1: begin
            bytee = 8'b00011001; // Example instruction for address 1
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h2: begin
            bytee = 8'b00100000; // Example instruction for address 2
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h3: begin
            bytee = 8'b00010000; // Example instruction for address 3
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h4: begin
            bytee = 8'b01110000; // Example instruction for address 4
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h5: begin
            bytee = 8'b00000000; // Example instruction for address 5
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h6: begin
            bytee = 8'b00010100; // Example instruction for address 6
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h7: begin
            bytee = 8'b00000100; // Example instruction for address 7
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h8: begin
            bytee = 8'b10110010; // Example instruction for address 8
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'h9: begin
            bytee = 8'b00100000; // Example instruction for address 9
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'hA: begin
            bytee = 8'b00100000; // Example instruction for address 10
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'hB: begin
            bytee = 8'b00100000; // Example instruction for address 11
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'hC: begin
            bytee = 8'b00100000; // Example instruction for address 12
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'hD: begin
            bytee = 8'b00100000; // Example instruction for address 13
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'hE: begin
            bytee = 8'b00100000; // Example instruction for address 14
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        4'hF: begin
            bytee = 8'b00100000; // Example instruction for address 15
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
        default: begin
            bytee = 8'b00100000; // Default case for safety
            imm = bytee[2:0];
            j = bytee[7];
            c = bytee[6];
            D = bytee[5:4];
            sreg = bytee[3];
            s = bytee[2];
        end
    endcase
end

endmodule



