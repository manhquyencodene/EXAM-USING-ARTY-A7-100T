`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2026 09:58:41 PM
// Design Name: 
// Module Name: LED_CLOCK
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


module LED_CLOCK(
    input clk,
    input [1:0] btn,
    output reg [3:0] led
);

reg [26:0] counter;
reg paused;
reg btn1_prev;

always @(posedge clk) begin

    // B??c 1: c?p nh?t btn1_prev (luôn ch?y m?i clock)
    btn1_prev <= btn[1];

    // B??c 2: edge detection btn[1] ? toggle paused
    if (btn[1] == 1 && btn1_prev == 0) begin
        paused <= ~paused;
    end

    // B??c 3: reset
    if (btn[0] == 1) begin
        led <= 0;
        counter <= 0;
    end

    // B??c 4: ??m khi không pause và không reset
    else if (paused == 0) begin // ?ây là dong l?nh t?m dùng h? th?ng 
        if (counter == 99_999_999) begin
            led <= led + 1;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end

end
endmodule
