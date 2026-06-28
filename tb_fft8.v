`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create %fate: 13.03.2026 09:23:21
// Design Name: 
// Module Name: tb_fft8
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


//`timescale 1ns/1ps

module tb_fft8;

reg signed [7:0] x0_re,x0_im;
reg signed [7:0] x1_re,x1_im;
reg signed [7:0] x2_re,x2_im;
reg signed [7:0] x3_re,x3_im;
reg signed [7:0] x4_re,x4_im;
reg signed [7:0] x5_re,x5_im;
reg signed [7:0] x6_re,x6_im;
reg signed [7:0] x7_re,x7_im;

wire signed [15:0] X0_re,X0_im;
wire signed [15:0] X1_re,X1_im;
wire signed [15:0] X2_re,X2_im;
wire signed [15:0] X3_re,X3_im;
wire signed [15:0] X4_re,X4_im;
wire signed [15:0] X5_re,X5_im;
wire signed [15:0] X6_re,X6_im;
wire signed [15:0] X7_re,X7_im;


eight_point_FFT_top DUT(

x0_re,x0_im,
x1_re,x1_im,
x2_re,x2_im,
x3_re,x3_im,
x4_re,x4_im,
x5_re,x5_im,
x6_re,x6_im,
x7_re,x7_im,

X0_re,X0_im,
X1_re,X1_im,
X2_re,X2_im,
X3_re,X3_im,
X4_re,X4_im,
X5_re,X5_im,
X6_re,X6_im,
X7_re,X7_im

);

// ================= TASK =================
task print_fft;
real r_re, r_im;
begin
    $display("------------ FFT OUTPUT ------------");

    r_re = X0_re/128.0; r_im = X0_im/128.0;
    $display("X0 = %f + j%f", r_re, r_im);

    r_re = X1_re/128.0; r_im = X1_im/128.0;
    $display("X1 = %f + j%f", r_re, r_im);

    r_re = X2_re/128.0; r_im = X2_im/128.0;
    $display("X2 = %f + j%f", r_re, r_im);

    r_re = X3_re/128.0; r_im = X3_im/128.0;
    $display("X3 = %f + j%f", r_re, r_im);

    r_re = X4_re/128.0; r_im = X4_im/128.0;
    $display("X4 = %f + j%f", r_re, r_im);

    r_re = X5_re/128.0; r_im = X5_im/128.0;
    $display("X5 = %f + j%f", r_re, r_im);

    r_re = X6_re/128.0; r_im = X6_im/128.0;
    $display("X6 = %f + j%f", r_re, r_im);

    r_re = X7_re/128.0; r_im = X7_im/128.0;
    $display("X7 = %f + j%f", r_re, r_im);

    $display("------------------------------------\n");
end
endtask

// ================= TESTCASE TASK =================
task apply_input;
input signed [7:0] a0,a1,a2,a3,a4,a5,a6,a7;
begin
    x0_re=a0; x1_re=a1; x2_re=a2; x3_re=a3;
    x4_re=a4; x5_re=a5; x6_re=a6; x7_re=a7;

    x0_im=0; x1_im=0; x2_im=0; x3_im=0;
    x4_im=0; x5_im=0; x6_im=0; x7_im=0;

    #10;
    print_fft();
end
endtask

// ================= MAIN =================
initial begin

$display("===== FFT TESTBENCH START =====");

// Testcase 1 (Q1.7 scaled)
apply_input(8'd127,8'd127,8'd127,8'd127,8'd0,8'd0,8'd0,8'd0);

// Testcase 2
apply_input(8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd8);

// Testcase 3
apply_input(8'd10,8'd20,8'd30,8'd40,8'd50,8'd60,8'd70,8'd80);

// Testcase 4
apply_input(8'd64,8'd64,8'd64,8'd64,8'd64,8'd64,8'd64,8'd64);

$display("===== TEST COMPLETE =====");

#10;
$finish;


end

endmodule
