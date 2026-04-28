`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2026 01:48:31 AM
// Design Name: 
// Module Name: SW_RGB
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


module SW_RGB (
output led0_r,
output led0_g,
output led0_b,
input [2:0] sw
    );
assign led0_r = sw[0];
assign led0_g = sw[1];
assign led0_b = sw[2];

endmodule
