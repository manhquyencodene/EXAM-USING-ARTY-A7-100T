`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2026 08:02:56 PM
// Design Name: 
// Module Name: PWM_LED
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


module PWM_LED(
output reg led,
input [3:0] sw,
input clk
);
reg [3:0] counter;
always @(posedge clk) begin 
counter <= counter +1;
if(counter <= sw)
led<= 1; 
else 
led <= 0;
end
endmodule