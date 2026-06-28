`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 10:57:20
// Design Name: 
// Module Name: first_two_point_FFT
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


module first_two_point_FFT(
    input [7:0] x1_re,x1_im,
    input [7:0] x2_re,x2_im,
    output [15:0] y1_re,y1_im,
    output [15:0] y2_re,y2_im
    );
    
    assign y1_re = x1_re + x2_re;
    assign y1_im = x1_im + x2_im;
    assign y2_re = x1_re - x2_re;
    assign y2_im = x1_im - x1_im;
    
endmodule
