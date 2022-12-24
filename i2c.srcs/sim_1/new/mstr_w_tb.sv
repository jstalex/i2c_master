`timescale 1ns / 1ps


module mstr_w_tb();

wire scl;
wire sda;
reg we;
reg wd;
reg mode;
reg [6:0] address;
reg [3:0] state;
reg [2:0] bit_ind;
reg [3:0] counter;

reg clk;
reg rst;

reg start;

reg [7:0] data_for_slave;
reg [7:0] recieved_data;

assign sda = we ? wd : 1'bz;

mstr dut(
  .mode(mode),
  .address(address),
  .wdata(data_for_slave),
  .clk(clk),
  .rst(rst),
  .scl(scl),
  .sda(sda)  
);

parameter LIS = 0,
          GETA = 1,
          ANS = 2,
          GETD = 3,
          GETRW = 5,
          ANS_1 = 6, 
          STOP = 4;
          

initial begin	
	mode <= 1'b1; // test writing
	address <= 7'b1101101; // mpu6000
	data_for_slave <= 8'b00111100;
	recieved_data <= 8'b0;
	bit_ind <= 0;
	counter <= 0;
	state <= LIS;
	wd <= 1'b0;
	we <= 1'b0;
    start <= 1;
    #60;
    start <= 0;
end

initial begin
	clk = 0;
	forever
	#10 clk = !clk;
end	

initial begin
    rst <= 1;
    #20;
    rst <= 0;
end


always @(posedge clk, negedge sda) begin
     case(state)
     LIS: begin
	       if (scl == 1 && sda == 0 && start) begin
	           bit_ind <= 0;
	           counter <= 0;
	           state <= GETA;
	       end
	end
    endcase
end


always @(posedge clk) begin
     case(state)
     GETA: begin
           if (scl == 0) begin
               counter <= counter + 1'b1;
               if (counter == 4'd7) begin
                   bit_ind <= 0;
                   counter <= 0;
                   state <= GETRW;
               end
	       end
	   end
	   GETRW: begin
	       if (scl == 0) begin
	           wd <= 0;
	           we <= 1'b1;
	           state <= ANS;
	       end
	   end
	   ANS: begin
	      bit_ind <= 0;
	      if (scl == 0) begin
	          we <= 0; 
	          state <= GETD;
	      end
	   end
	   GETD: begin
	       if (scl == 1) recieved_data[bit_ind] <= sda;
	       if (scl == 0) begin
	           if (bit_ind == 3'd7) begin
	               bit_ind = 0;
	               wd <= 0;
	               we <= 1;
	               state <= ANS_1;
	           end
	           bit_ind = bit_ind + 1;
	       end
	   end
	   ANS_1: begin
	      if (scl == 0) begin
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
