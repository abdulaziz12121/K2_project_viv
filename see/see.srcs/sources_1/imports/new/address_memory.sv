`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 02:22:44 PM
// Design Name: 
// Module Name: address_memory
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
module address_memory(
    input [7:0] data_in,   // 8-bit data input
    input en_w,            // Write enable signal
    input clk,             // Clock signal
    input [2:0] address,   // 3-bit address
    output reg [7:0] data_out // 8-bit data output
);

    // Memory declaration: 8 locations, 8 bits each
    reg [7:0] memory [7:0];

    always @(posedge clk ) begin
        if (en_w) begin
            // Write data to the memory using case
            case (address)
                3'b000: memory[0] <= data_in;
                3'b001: memory[1] <= data_in;
                3'b010: memory[2] <= data_in;
                3'b011: memory[3] <= data_in;
                3'b100: memory[4] <= data_in;
                3'b101: memory[5] <= data_in;
                3'b110: memory[6] <= data_in;
                3'b111: memory[7] <= data_in;
                default: memory[address] <= data_in; // Default case for safety
            endcase
                
                data_out = memory[address];

        end
    
          // Write data to the memory using case
            
        end
    

   
endmodule

*/

module address_memory(
    input [7:0] data_in,   // 8-bit data input
    input en_w,            // Write enable signal
    input clk,             // Clock signal
    input [2:0] address,   // 3-bit address
    output reg [7:0] data_out // 8-bit data output
);

    // Memory declaration: 8 locations, 8 bits each
    reg [7:0] memory [7:0];

    always @(posedge clk) begin
        if (en_w) begin
            // Write data to the memory
            memory[address] <= data_in;
        end
    end

    always @(*) begin
        // Continuous read operation
        data_out = memory[address];
    end

endmodule
/*
module address_memory(
    input [7:0] data_in,       // 8-bit data input
    input en_w,                // Write enable signal
    input clk,                 // Clock signal
    input [2:0] address,       // 3-bit address
    output reg [7:0] data_out  // 8-bit data output
);

    // Memory declaration: 8 locations, 8 bits each
    reg [7:0] memory [7:0];

    always @(posedge clk) begin
        if (en_w) begin
            // Write data to the memory
            memory[address] <= data_in;
        end
    end

    always @(*) begin
        case (address)
            3'b000: data_out = memory[0];
            3'b001: data_out = memory[1];
            3'b010: data_out = memory[2];
            3'b011: data_out = memory[3];
            3'b100: data_out = memory[4];
            3'b101: data_out = memory[5];
            3'b110: data_out = memory[6];
            3'b111: data_out = memory[7];
            default: data_out = 8'b00000000; // Default case for safety
        endcase
    end

endmodule
*/

