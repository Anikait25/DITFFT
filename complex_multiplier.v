`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 21:40:07
// Design Name: 
// Module Name: complex_multiplier
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


module complex_multiplier(
    input signed [15:0] a_re,a_im,
    input signed [7:0] b_re,b_im,
    output signed [15:0] out_re,out_im
    );
    wire signed [23:0] m1,m2,m3,m4;
    wire signed [24:0] temp_re,temp_im;
    
    assign m1 = a_re * b_re;
    assign m2 = a_im * b_im;
    assign m3 = a_re * b_im;
    assign m4 = a_im * b_re;
    
    assign temp_re = (m1 - m2);
    assign temp_im = (m3 + m4);
    
    assign out_re = temp_re >> 7;
    assign out_im = temp_im >> 7;
    
    //initial begin
    //$display("Out_re = %d, out_im = %d", out_re, out_im);
    //end
endmodule
