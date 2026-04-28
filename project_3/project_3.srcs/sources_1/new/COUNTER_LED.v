`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2026 10:57:58 PM
// Design Name: 
// Module Name: COUNTER_LED
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


module COUNTER_LED(
input clk,
input [3:0] btn,
output reg [3:0] led
);

reg btn_prev;
always @(posedge clk)
begin 
  if (btn_prev == 0 && btn[0] == 1) 
  begin
   led [3:0] <= ~led[3:0];
 end
btn_prev <= btn[0];
end 
endmodule
