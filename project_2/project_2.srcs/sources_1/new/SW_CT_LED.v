`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2026 04:49:59 PM
// Design Name: 
// Module Name: SW_CT_LED
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


module SW_CT_LED(
input [3:0] sw,
output [3:0] led
);
assign led[0] = sw[0] & sw[1];
assign led[1] = sw[0] | sw[1];
assign led[2] = (sw[2] ^ sw[3]);
assign led[3] = ~sw[3];

endmodule
