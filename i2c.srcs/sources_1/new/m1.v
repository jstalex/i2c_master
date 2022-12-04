`timescale 1ns / 1ps

module m1
(
	input slave,
	input start,
	input stop,
	input clk,
	inout sda,
	input [6:0] addr,
	input [7:0] data,
	input cmd,
	output reg wd,
	output reg rd,
	output reg we, //slave or master
	output reg scl
);
//счетчики
integer flag; //между sda и scl начало/конец
integer sda_c; 
integer data_c; 
integer addr_c;
integer counter; //изменение в нулевом состоянии

reg [3:0] state;
	
parameter   IDLE = 0,
				BEGINNING = 1,// начало
				ADDRESS = 2,  // адресс
				RW_CMD = 3,   //чтение/запись
				WR_ACK = 4,   //проверка
				RD_ACK = 5,   //проверка
				WR_DATA = 6,  //запись
				RD_DATA = 7,  //чтение
				SEND_ACK = 8, 
				ENDING = 9;
initial state <= IDLE;
assign sda = we ? wd : 1'bz;

always@ (posedge clk)
begin
	case (state)
	IDLE:
	begin
		scl <= 1'b1;
		we <= 1'b1;
		wd <= 1'bz;
		flag = 0;
		sda_c = 3;
		data_c = 7;
		addr_c = 6;
		counter = 0;
		
		if (start) state <= BEGINNING;
	end
	
	BEGINNING:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		
		
		counter =0;
		end
			counter = counter +1;
		
		if (flag == 1)
		begin
		wd <= 1'b0;
		state <= ADDRESS;
		end
			flag <= flag +1;
	end
	
	ADDRESS:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		counter =0;
		end
			counter = counter +1;
			
		if (sda_c == 4)
		begin
		wd <= addr[addr_c];
		sda_c = 0;
			if (addr_c == 3'd0) state <= RW_CMD;
		addr_c = addr_c - 1;
		end
			sda_c = sda_c + 1;
		
	end
	
	RW_CMD:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		counter =0;
		end
			counter = counter +1;
			
		if (sda_c == 4)
		begin
		wd <= cmd;
		sda_c = 0;
		state <= cmd ? RD_ACK : WR_ACK;
		end
			sda_c = sda_c + 1;
	end
	
	WR_ACK:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		counter =0;
		end
			counter = counter +1;
		
		if (sda_c == 4)
		begin
		we <= 1'b0;
		rd <= we ? 1'b0 : sda;
		sda_c = 0;
		data_c <= 4'd7;
		state <= stop ? ENDING : WR_DATA;
		end
			sda_c = sda_c + 1;
	end
	
	RD_ACK:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		counter =0;
		end
			counter = counter +1;
		
		if (sda_c == 4)
		begin
		we <= 1'b0;
		rd <= we ? 1'b0 : sda;
		sda_c = 0;
		data_c <= 4'd7;
		state <= RD_DATA;
		end
			sda_c = sda_c + 1;
	end
	
	WR_DATA:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		counter =0;
		end
			counter = counter +1;
		
		if (sda_c == 4)
		begin
		we <= 1'b1;
		wd <= data[data_c];
		sda_c = 0;
			if (data_c == 4'd0) state <= WR_ACK;
		data_c = data_c - 1; 
		end
		sda_c = sda_c + 1;
	end
	
	RD_DATA:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		counter =0;
		end
			counter = counter +1;
		
		if (sda_c == 4)
		begin
		we <= 1'b0;
		rd <= we ? 1'b0 : sda;
		sda_c = 0;
			if (data_c == 4'd0) state <= SEND_ACK;
		data_c = data_c - 1; 
		end
			sda_c = sda_c + 1;
	end
	
	SEND_ACK:
	begin
		if (counter == 2)
		begin
		scl <=!scl;
		counter =0;
		end
			counter = counter +1;
			
		if (sda_c == 4)
		begin
		we <= 1'b1;
		wd <= stop;
		sda_c = 0;
		state <= stop ? ENDING : RD_ACK;
		end
			sda_c = sda_c + 1;
	end
	
	ENDING:
	begin
		if (sda_c < 6)
		begin
			if (counter == 2)
			begin
			scl <=!scl;
			counter =0;
			end
				counter = counter +1;
		end
		
		if (sda_c == 4)
		begin
		we <= 1'b1;
		wd <= 1'b0;
		end
			sda_c = sda_c + 1;
		
		if (sda_c == 7)
		begin
		wd <= 1'bz;
		scl <= 1'b1;
		end
		
		if (sda_c == 12)
		begin
		state <= IDLE;
		end
		
	end
	endcase
end

endmodule 