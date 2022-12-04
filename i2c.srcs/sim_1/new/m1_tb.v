
`timescale 1ns / 1ps

module m1_tb();
wire wd;
reg slave;
wire rd;
wire we;
reg start;
reg stop;
reg [6:0] addr;
reg cmd;
reg [7:0] data;
reg clk;
wire scl;
wire sda;

m1 UT(
slave,
start,
stop,
clk,
sda,
addr,
data,
cmd,
wd,
rd,
we,
scl
);

assign sda = we ? wd : slave;

initial
begin
	clk = 0;
	forever
	#1 clk = !clk;
end

initial
begin
	stop = 0;
	start = 0;
	addr = 7'b0000000;
	data = 8'b00000000;
	cmd = 0;
	slave = 1'bx; #30
	// запрос регистра у датчика
	start = 1;
	addr = 7'b1110011;  //73
	cmd = 0;
	data = 8'b01111111; #10
	start = 0;             #63
	slave = 0;             #9
	slave = 1'bx;          #56
	stop = 1;              #7
	slave = 0;             #4
	stop = 0;              #5
	slave = 1'bx;          #50
	// чтение с датчика
	start = 1;
	addr = 7'b1110011;  //73
	cmd = 1;
	start = 0;             #63
	slave = 0;             #8
	slave = 1'b0;          #8
	slave = 1'b0;          #8
	slave = 1'b1;          #8
	slave = 1'b1;          #8
	slave = 1'b0;          #8
	slave = 1'b0;          #8
	slave = 1'b0;          #4
	stop = 1;              #4
	slave = 1'b1;          #9
	slave = 1'bx;          #7
	stop = 0;              #50
	// запись в ридер
	start = 1;
	addr = 7'b0100111;  //27
	cmd = 0;           #10
	start = 0;             #61
	slave = 0;
	data = 8'b00001001; #72
	data = 8'b00000001; #64
	data = 8'b00001000; #64
	stop = 1;              #7
	slave = 0;             #4
	stop = 0;              #7
	slave = 1'bx;          #50
	//обращение на чтение 1 флага с датчика
	start = 1;
	addr = 7'b1110011;  
	cmd = 0;
	data = 8'b01000011; #10 //43
	start = 0;             #61
	slave = 0;             #11
	slave = 1'bx;          #56
	stop = 1;              #7
	slave = 0;             #4
	stop = 0;              #5
	slave = 1'bx;          #50
	// чтение 1 флага с датчика
	start = 1;
	addr = 7'b1110011; 
	cmd = 1;
	start = 0;             #61
	slave = 0;             #10
	slave = 1'b0;          #8
	slave = 1'b0;          #8
	slave = 1'b0;          #8
	slave = 1'b0;          #8
	slave = 1'b1;          #8
	slave = 1'b0;          #8
	slave = 1'b1;          #4
	stop = 1;              #4
	slave = 1'b1;          #9
	slave = 1'bx;          #7
	stop = 0;              #50
	//обращение на чтение 2 флага с датчика
	start = 1;
	addr = 7'b1110011;  
	cmd = 0;
	data = 8'b01000100; 		#10 //44
	start = 0;             	#61
	slave = 0;             	#11
	slave = 1'bx;          	#56
	stop = 1;              	#5
	slave = 0;             	#6
	stop = 0;              	#5
	slave = 1'bx;          	#50
	// чтение 2 флага с датчика
	start = 1;
	addr = 7'b1110011;  
	cmd = 1;
	start = 0;             #61
	slave = 0;             #10
	slave = 1'b0;          #8
	slave = 1'b0;          #8
	slave = 1'b0;          #8
	slave = 1'b1;          #8
	slave = 1'b1;          #8
	slave = 1'b0;          #8
	slave = 1'b1;          #4
	stop = 1;              #4
	slave = 1'b0;          #9
	slave = 1'bx;          #7
	stop = 0;              #50
	//экран
	start = 1;
	addr = 7'b0100000;  //20
	cmd = 0;           		#10
	start = 0;             	#61
	slave = 0;
	//очистка
	data = 8'b00001100; #72
	data = 8'b00001000; #72
	data = 8'b00011100; #72
	data = 8'b00011000; #72
	//запись
	data = 8'b10001100; #72//
	data = 8'b10001000; #72
	data = 8'b01111100; #72
	data = 8'b01111000; #72
	
	data = 8'b01001101; #72
	data = 8'b01001001; #72
	data = 8'b01101101; #72
	data = 8'b01101001; #72
	
	data = 8'b10001100; #72
	data = 8'b10001000; #72
	data = 8'b10001100; #72
	data = 8'b10001000; #72
	
	data = 8'b00111101; #72
	data = 8'b00111001; #72
	data = 8'b00101101; #72
	data = 8'b00101001; #72
	
	data = 8'b11001100; #72
	data = 8'b11001000; #72
	data = 8'b01011100; #72
	data = 8'b01011000; #72
	
	data = 8'b00111101; #72
	data = 8'b00111001; #72
	data = 8'b00001101; #72
	data = 8'b00001001; #72
	
	data = 8'b11001100; #72
	data = 8'b11001000; #72
	data = 8'b01101100; #72
	data = 8'b01101000; #72
	
	data = 8'b01001100; #72
	data = 8'b01001000; #72
	data = 8'b00101100; #72
	data = 8'b00101000; #72
	
	data = 8'b11001100; #72
	data = 8'b11001000; #72
	data = 8'b10001100; #72
	data = 8'b10001000; #72
	
	data = 8'b00111100; #72
	data = 8'b00111000; #72
	data = 8'b00011100; #72
	data = 8'b00011000; #72
	
	data = 8'b11001100; #72
	data = 8'b11001000; #72
	data = 8'b10011100; #72
	data = 8'b10011000; #72
	
	data = 8'b01001101; #72
	data = 8'b01001001; #72
	data = 8'b00011101; #72
	data = 8'b00011001; #64
	stop = 1;              #7
	slave = 0;             #4
	stop = 0;              #7
	slave = 1'bx;          #50

	start = 0;
end

endmodule 