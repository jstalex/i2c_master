`timescale 1ns / 1ps

module mstr_tb();

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
reg [7:0] data_for_test;

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
          SEND = 3,
          GETRW = 5,
          STOP = 4;
          

initial begin	// test reading
	mode <= 1'b0;
	address <= 7'b1101001; // mpu6000
	data_for_test <= 8'b10101010;
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

//initial begin
//	scl = 0;
//	forever
//	#10 scl = !scl;
//end

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
//	       if (sda == address[bit_ind]) begin
//	           bit_ind <= bit_ind + 1'b1;
//	           counter <= counter + 1'b1;
//	       end else begin
//	           state <= STOP;
//	           bit_ind <= 0;
//	           counter <= 0;
//	       end
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
	      wd <= 0;
	      we <= 1'b1;
	     //  #40;
	      bit_ind <= 0;
	      if (scl == 0) state <= SEND;
	   end
	   SEND: begin
	       if (scl == 0) begin
               wd <= data_for_test[bit_ind];
               bit_ind <= bit_ind + 1'b1;
               if (bit_ind == 3'd7)begin
                   bit_ind <= 0;
                   we <= 0;
                   state <= STOP;
               end
           end
	   end
	   STOP: begin
	       we <= 0;
	   end
	endcase
end

endmodule
