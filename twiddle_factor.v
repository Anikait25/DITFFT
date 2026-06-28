`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 21:21:52
// Design Name: 
// Module Name: twiddle_factor
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


module twiddle_factor(
    input  [1:0] addr,
output reg signed [7:0] w_re,
output reg signed [7:0] w_im

);

always @(*) begin
    case(addr)
        2'd0: begin w_re = 127; w_im = 0;    end
        2'd1: begin w_re = 90;  w_im = 90;  end
        2'd2: begin w_re = 0;   w_im = -127; end
        2'd3: begin w_re = -90; w_im = -90;  end
        default: begin w_re = 0; w_im = 0; end
    endcase
end
//initial begin
    //$display("w_re = %d, w_im = %d", w_re, w_im);
    //end
endmodule
