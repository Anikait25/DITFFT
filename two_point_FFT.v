`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 20:20:16
// Design Name: 
// Module Name: two_point_FFT
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


module two_point_FFT(
    input signed [15:0] x1_re,
    input signed [15:0] x2_re,
    input signed [15:0] x1_im,
    input signed [15:0] x2_im,
    output signed [15:0] y1_re,
    output signed [15:0] y1_im,
    output signed [15:0] y2_re,
    output signed [15:0] y2_im
    );
    assign y1_re = x1_re + x2_re;
    assign y1_im = x1_im + x2_im;
    
    assign y2_re = x1_re - x2_re;
    assign y2_im = x1_im - x2_im;
    //initial begin
    //$display("y1_re = %f , y1_im = %f", y1_re, y1_im);
    //$display("y2_re = %f , y2_im = %f", y2_re, y2_im);
    //end
endmodule
