`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:51:36 AM
// Design Name: 
// Module Name: Register1
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


module Register1(input clk,en,reset,
input [7:0]D,  
output reg [7:0]Q);

//logic [3:0]D,Q;
D_flip_2 D0(D[0],clk,en,reset,Q[0]);
D_flip_2 D1(D[1],clk,en,reset,Q[1]);
D_flip_2 D2(D[2],clk,en,reset,Q[2]);
D_flip_2 D3(D[3],clk,en,reset,Q[3]);
D_flip_2 D4(D[4],clk,en,reset,Q[4]);
D_flip_2 D5(D[5],clk,en,reset,Q[5]);
D_flip_2 D6(D[6],clk,en,reset,Q[6]);
D_flip_2 D7(D[7],clk,en,reset,Q[7]);


endmodule
