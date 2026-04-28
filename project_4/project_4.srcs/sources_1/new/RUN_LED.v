`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2026 12:11:23 AM
// Design Name: 
// Module Name: RUN_LED
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


module RUN_LED(
input clk, 
output reg  [3:0] led
    );
reg [25:0] counter;
initial begin 
led <= 4'b0001;
end
always @(posedge clk)
begin
 if (counter == 49_000_000 )
 begin 
 counter <= 0;
led <= {led[2:0], led[3]}; // d
end
else counter <= counter + 1; 
 end
endmodule

