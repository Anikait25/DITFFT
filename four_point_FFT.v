`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 21:27:53
// Design Name: 
// Module Name: four_point_FFT
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


module four_point_FFT(
    input signed [7:0]x0_re,x0_im,
    input signed [7:0]x1_re,x1_im,
    input signed [7:0]x2_re,x2_im,
    input signed [7:0]x3_re,x3_im,
    output signed [15:0]y0_re,y0_im,
    output signed [15:0]y1_re,y1_im,
    output signed [15:0]y2_re,y2_im,
    output signed [15:0]y3_re,y3_im
    );
    
    assign y0_re = x0_re + x2_re;
    assign y0_im = x0_im + x2_im;
    
    assign y1_re = x1_re + x3_re;
    assign y1_im = x1_im + x3_im;
    
    assign y2_re = x0_re - x2_re;
    assign y2_im = x0_im - x2_im;
    
    assign y3_re = x1_re - x3_re;
    assign y3_im = x1_im - x3_im;
    
endmodule
