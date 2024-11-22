`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 09:49:32 AM
// Design Name: 
// Module Name: decoder
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


module decoder(input[1:0]D,output reg [3:0]en);

always @(*)begin 


 case (D)
            2'b00: en = 4'b0001;  // Enable bit 0
            2'b01: en = 4'b0010;  // Enable bit 1
            2'b10: en = 4'b0100;  // Enable bit 2
            2'b11: en = 4'b0000;  // Enable bit 3
            default: en = 4'b0000; // Fallback (shouldn't happen for valid inputs)
    
        endcase
    
    end




endmodule
