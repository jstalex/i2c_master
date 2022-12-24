`timescale 1ns / 1ps


module test_tb();

logic rst, clk;

test dut(clk, rst);

initial begin
	clk = 0;
	forever
	#10 clk = !clk;
end	

initial begin
    rst <= 1;
    #30;
    rst <= 0;
end


endmodule
