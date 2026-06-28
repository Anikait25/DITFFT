`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2026 07:45:42
// Design Name: 
// Module Name: eight_point_FFT_top
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


module eight_point_FFT_top(
    input signed [7:0] x0_re,x0_im,
    input signed [7:0] x1_re,x1_im,
    input signed [7:0] x2_re,x2_im,
    input signed [7:0] x3_re,x3_im,
    input signed [7:0] x4_re,x4_im,
    input signed [7:0] x5_re,x5_im,
    input signed [7:0] x6_re,x6_im,
    input signed [7:0] x7_re,x7_im,
    output signed [15:0] X0_re,X0_im,
    output signed [15:0] X1_re,X1_im,
    output signed [15:0] X2_re,X2_im,
    output signed [15:0] X3_re,X3_im,
    output signed [15:0] X4_re,X4_im,
    output signed [15:0] X5_re,X5_im,
    output signed [15:0] X6_re,X6_im,
    output signed [15:0] X7_re,X7_im
    );
    
    //----------------------------------------------Stage 1----------------------------------------------------//
    
     wire signed [15:0] s1_0_re,s1_0_im; 
     wire signed [15:0] s1_1_re,s1_1_im; 
     wire signed [15:0] s1_2_re,s1_2_im; 
     wire signed [15:0] s1_3_re,s1_3_im; 
     wire signed [15:0] s1_4_re,s1_4_im; 
     wire signed [15:0] s1_5_re,s1_5_im; 
     wire signed [15:0] s1_6_re,s1_6_im; 
     wire signed [15:0] s1_7_re,s1_7_im;
     
     first_two_point_FFT f1(.x1_re(x0_re),.x1_im(x0_im),.x2_re(x4_re),.x2_im(x4_im),.y1_re(s1_0_re),.y1_im(s1_0_im),.y2_re(s1_1_re),.y2_im(s1_1_im));
     first_two_point_FFT f2(.x1_re(x2_re),.x1_im(x2_im),.x2_re(x6_re),.x2_im(x6_im),.y1_re(s1_2_re),.y1_im(s1_2_im),.y2_re(s1_3_re),.y2_im(s1_3_im));
     first_two_point_FFT f3(.x1_re(x1_re),.x1_im(x1_im),.x2_re(x5_re),.x2_im(x5_im),.y1_re(s1_4_re),.y1_im(s1_4_im),.y2_re(s1_5_re),.y2_im(s1_5_im));
     first_two_point_FFT f4(.x1_re(x3_re),.x1_im(x3_im),.x2_re(x7_re),.x2_im(x7_im),.y1_re(s1_6_re),.y1_im(s1_6_im),.y2_re(s1_7_re),.y2_im(s1_7_im));
     
     //assign s1_0_re = x0_re + x4_re; 
     //assign s1_0_im = x0_im + x4_im; 
     //assign s1_1_re = x0_re - x4_re; 
     //assign s1_1_im = x0_im - x4_im; 
     //assign s1_2_re = x2_re + x6_re; 
     //assign s1_2_im = x2_im + x6_im; 
     //assign s1_3_re = x2_re - x6_re; 
     //assign s1_3_im = x2_im - x6_im; 
     //assign s1_4_re = x1_re + x5_re; 
     //assign s1_4_im = x1_im + x5_im; 
     //assign s1_5_re = x1_re - x5_re; 
     //assign s1_5_im = x1_im - x5_im; 
     //assign s1_6_re = x3_re + x7_re; 
     //assign s1_6_im = x3_im + x7_im; 
     //assign s1_7_re = x3_re - x7_re; 
     //assign s1_7_im = x3_im - x7_im; 
     //initial begin
     //$display("s1_1_re = %d,s1_1_im = %d",s1_1_re, s1_1_im);
     //$display("s1_2_re = %d,s1_2_im = %d",s1_2_re, s1_2_im);
     //$display("s1_3_re = %d,s1_3_im = %d",s1_3_re, s1_3_im);
     //$display("s1_4_re = %d,s1_4_im = %d",s1_4_re, s1_4_im);
     //$display("s1_5_re = %d,s1_5_im = %d",s1_5_re, s1_5_im);
     //$display("s1_6_re = %d,s1_6_im = %d",s1_6_re, s1_6_im);
     //$display("s1_7_re = %d,s1_7_im = %d",s1_7_re, s1_7_im);
     //end
     //two_point_FFT f1(.x1_re(x0_re),.x1_im(x0_im),.x2_re(x4_re),.x2_im(x4_im),.y1_re(s1_0_re),.y1_im(s1_0_im),.y2_re(s1_1_re),.y2_im(s1_1_im)); 
     //two_point_FFT f2(.x1_re(x2_re),.x1_im(x2_im),.x2_re(x6_re),.x2_im(x6_im),.y1_re(s1_2_re),.y1_im(s1_2_im),.y2_re(s1_3_re),.y2_im(s1_3_im)); 
     //two_point_FFT f3(.x1_re(x1_re),.x1_im(x1_im),.x2_re(x5_re),.x2_im(x5_im),.y1_re(s1_4_re),.y1_im(s1_4_im),.y2_re(s1_5_re),.y2_im(s1_5_im)); 
     //two_point_FFT f4(.x1_re(x3_re),.x1_im(x3_im),.x2_re(x7_re),.x2_im(x7_im),.y1_re(s1_6_re),.y1_im(s1_6_im),.y2_re(s1_7_re),.y2_im(s1_7_im)); 
     //-----------Stage 2--------------// 
     wire signed [15:0] s2_0_re,s2_0_im; 
     wire signed [15:0] s2_1_re,s2_1_im; 
     wire signed [15:0] s2_2_re,s2_2_im; 
     wire signed [15:0] s2_3_re,s2_3_im; 
     wire signed [15:0] s2_4_re,s2_4_im; 
     wire signed [15:0] s2_5_re,s2_5_im; 
     wire signed [15:0] s2_6_re,s2_6_im; 
     wire signed [15:0] s2_7_re,s2_7_im; 
     //-------------------------Twiddle Factors for Stage 2-------------------// 
     wire signed [7:0] w_re,w_im; 
     wire signed [15:0] tw_re,tw_im,tw1_re,tw1_im; 
     twiddle_factor LUT(.addr(2'd2),.w_re(w_re),.w_im(w_im));
     //initial begin
     //$display("w_re = %d, w_im = %d", w_re, w_im);
     //end 
     complex_multiplier cm(.a_re(s1_3_re),.a_im(s1_3_im),.b_re(w_re),.b_im(w_im),.out_re(tw_re),.out_im(tw_im));
     //initial begin
     //$display("Out_re = %d, out_im = %d", tw_re, tw_im);
     //end
     complex_multiplier cm1(.a_re(s1_7_re),.a_im(s1_7_im),.b_re(w_re),.b_im(w_im),.out_re(tw1_re),.out_im(tw1_im)); 
     //initial begin
     //$display("Out_re = %d, out_im = %d", tw1_re, tw1_im);
     //end
     //------------------------Stage 2 butterfly------------------------// 
     two_point_FFT f5(.x1_re(s1_0_re),.x1_im(s1_0_im),.x2_re(s1_2_re),.x2_im(s1_2_im),.y1_re(s2_0_re),.y1_im(s2_0_im),.y2_re(s2_2_re),.y2_im(s2_2_im));
     two_point_FFT f6(.x1_re(s1_1_re),.x1_im(s1_1_im),.x2_re(tw_re),.x2_im(tw_im),.y1_re(s2_1_re),.y1_im(s2_1_im),.y2_re(s2_3_re),.y2_im(s2_3_im)); 
     two_point_FFT f7(.x1_re(s1_4_re),.x1_im(s1_4_im),.x2_re(s1_6_re),.x2_im(s1_6_im),.y1_re(s2_4_re),.y1_im(s2_4_im),.y2_re(s2_6_re),.y2_im(s2_6_im)); 
     two_point_FFT f8(.x1_re(s1_5_re),.x1_im(s1_5_im),.x2_re(tw1_re),.x2_im(tw1_im),.y1_re(s2_5_re),.y1_im(s2_5_im),.y2_re(s2_7_re),.y2_im(s2_7_im)); 
     //-------------------------------Stage 3------------------------//
     //----------------------------------Twiddle Factors for Stage 3-------------------------// 
     wire signed [7:0] w1_re,w1_im,w2_re,w2_im,w3_re,w3_im; 
     wire signed [15:0] tw2_re,tw2_im,tw3_re,tw3_im,tw4_re,tw4_im; 
     twiddle_factor LUT1(.addr(2'd1),.w_re(w1_re),.w_im(w1_im)); 
     twiddle_factor LUT2(.addr(2'd2),.w_re(w2_re),.w_im(w2_im)); 
     twiddle_factor LUT3(.addr(2'd3),.w_re(w3_re),.w_im(w3_im)); 
     complex_multiplier cm2(.a_re(s2_5_re),.a_im(s2_5_im),.b_re(w1_re),.b_im(w1_im),.out_re(tw2_re),.out_im(tw2_im)); 
     complex_multiplier cm3(.a_re(s2_6_re),.a_im(s2_6_im),.b_re(w2_re),.b_im(w2_im),.out_re(tw3_re),.out_im(tw3_im)); 
     complex_multiplier cm4(.a_re(s2_7_re),.a_im(s2_7_im),.b_re(w3_re),.b_im(w3_im),.out_re(tw4_re),.out_im(tw4_im)); 
     //-----------------------------------Stage 3 Butterflies----------------------------------// 
     two_point_FFT f9(.x1_re(s2_0_re),.x1_im(s2_0_im),.x2_re(s2_4_re),.x2_im(s2_4_im),.y1_re(X0_re),.y1_im(X0_im),.y2_re(X4_re),.y2_im(X4_im));
     two_point_FFT f10(.x1_re(s2_1_re),.x1_im(s2_1_im),.x2_re(tw2_re),.x2_im(tw2_im),.y1_re(X1_re),.y1_im(X1_im),.y2_re(X5_re),.y2_im(X5_im)); 
     two_point_FFT f11(.x1_re(s2_2_re),.x1_im(s2_2_im),.x2_re(tw3_re),.x2_im(tw3_im),.y1_re(X2_re),.y1_im(X2_im),.y2_re(X6_re),.y2_im(X6_im)); 
     two_point_FFT f12(.x1_re(s2_3_re),.x1_im(s2_3_im),.x2_re(tw4_re),.x2_im(tw4_im),.y1_re(X3_re),.y1_im(X3_im),.y2_re(X7_re),.y2_im(X7_im));
           
endmodule
