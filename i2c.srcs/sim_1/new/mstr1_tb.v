`timescale 1ns / 1ps

module mstr1_tb();

reg scl;
wire sda;
reg we;
reg wd;
reg mode;
reg start;
reg [6:0] address;
reg [3:0] state;
reg [2:0] bit_ind;
reg [3:0] counter;
reg rw; // read write register
reg [7:0] data_for_slave;
reg [7:0] byte;
reg [7:0] data_for_test;

assign sda = we ? wd : 1'bz;

mstr dut(
  .mode(mode),
  .start(start),
  .address(address),
  .wdata(data_for_slave),
  .scl(scl),
  .sda(sda)  
);

parameter LIS = 0,
          GETA = 1,
          ANS = 2,
          SEND = 3,
          STOP = 4,
          
          GETD = 6,
          GETRW = 5;


initial begin	// test reading 400нс транзакция с чтением 1 бита
	mode <= 1'b0;
	address <= 7'b1101001; // mpu6000
	data_for_test <= 8'b10101010;
	bit_ind <= 0;
	counter <= 0;
	byte <= 8'b0;
	state <= LIS;
	wd <= 1'b0;
	we <= 1'b0;
	start <= 1;
	#15;
	start <= 0;
end

initial begin
	scl = 0;
	forever
	#10 scl = !scl;
end	

always @(posedge scl, negedge sda) begin
	case(state)
	   LIS: begin
	       if (scl == 1 && sda == 0) begin
	           bit_ind <= 0;
	           counter <= 0;
	           state <= GETA;
	       end
	   end
	endcase
end

always @(posedge scl) begin
     case(state)
     GETA: begin
//	       if (sda == address[bit_ind]) begin
//	           bit_ind <= bit_ind + 1'b1;
//	           counter <= counter + 1'b1;
//	       end else begin
//	           state <= STOP;
//	           bit_ind <= 0;
//	           counter <= 0;
//	       end
           counter <= counter + 1'b1;
	       if (counter == 4'd7) begin
	           bit_ind <= 0;
	           counter <= 0;
	           state <= GETRW;
	       end
	   end
	   GETRW: begin
	       rw <= sda;
	       wd <= 0;
	       we <= 1'b1; // сюда
	   end
	   ANS: begin
	      // сдвинул энейбл на 1 такт вверх
	      #20;
	      bit_ind <= 0;
	      we <= 1'b0;
	      if (mode) state <= GETD;
	      else state <= SEND;
	   end
	   GETD: begin
	        byte[bit_ind] <= sda;
            bit_ind <= bit_ind + 1'b1;
            if (bit_ind == 3'd7) begin
                bit_ind <= 0;
                byte <= 8'b0;
                wd <= 1'b0; // ack answer
                we <= 1'b1;
                // отдать шину и все 
                // тут либо новый стейт сделать, либо однобитные флаги просто с задержкой
            end
	   end
	   
	   SEND: begin
	       wd <= data_for_test[bit_ind];
	       bit_ind <= bit_ind + 1'b1;
           if (bit_ind == 3'd7) begin
               bit_ind <= 0;
               we <= 0;
               state <= STOP;
           end
	   end
	   STOP: begin
	       we <= 0;
	   end
	endcase
end
endmodule
