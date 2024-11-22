`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 01:20:59 PM
// Design Name: 
// Module Name: mux4
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
module mux4(input cout,zero,j_and_not_seg,input [1:0]jc,output out

    );
    always@(*)begin 
    
    if(jc[0])
    out=cout;
    else if(jc[1])
    out=j_and_not_seg;
      else if(jc==2'b11);
      

    
    
   end 
endmodule
*/
module mux4(
    input cout,             // Carry-out signal
    input zero,             // Zero flag signal
    input j_and_not_seg,    // Input signal j_and_not_seg
    input [1:0] jc,         // 2-bit control signal for multiplexing
    output reg out          // Output of the mux
);

always @(*) begin 
    // Default value for out to avoid latches

    // Prioritize the jc == 2'b11 condition
    if (jc == 2'b11)
        out = zero;              // If jc is 11, select zero
    else if (jc==2'b10) 
        out = j_and_not_seg;
    else if (jc==2'b01) 
        out = cout;              // If jc[0] is 1, select cout
    else 
        out=0;

end

endmodule


