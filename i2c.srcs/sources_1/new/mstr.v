`timescale 1ns / 1ps

module mstr(
    input mode,
    input start,
    
    input [6:0] address,
    input [7:0] wdata,
    
    input scl,
    inout sda
);

reg [7:0] RAM [0:5];
reg [7:0] byte;

reg we;
reg [4:0] mem_ind;
reg [2:0] bit_ind;

reg wd;
reg slave_ans;

assign sda = we ? wd : 1'bz;

initial begin 
    mem_ind <= 1'b0; 
    bit_ind <= 1'b0;
    byte <= 8'b0;
    wd <= 1'b1;
    we <= 1'b1;
end 
reg [3:0] state;
	
parameter   ADDR = 0,  
			RW = 1,   
			RD_ACK = 2,   
			RD_DATA = 3,  
			SEND_ANS = 4, 
			STOP = 5,
			
			WR_ACK = 7,
			WR_DATA = 6;
			 
initial state <= ADDR;

always @(posedge scl) begin
    if (start) begin
        #5;
        we <= 1'b1;
        wd <= 0;
        #5;
        // we <= 1'b0;   
    end else begin
        case(mode)
        1'b0: begin // reading
            case(state)
                ADDR: begin
                    we <= 1'b1;
                    // bit_ind <= 0;
                    wd <= address[bit_ind];
                    bit_ind <= bit_ind + 1'b1;
                    if (bit_ind == 3'd6)begin
                        state <= RW;
                        bit_ind <= 0;
                    end
                end
                
                RW: begin
                    we <= 1'b1;
                    wd <= 1'b0;
                    we <= 1'b0;
                    // далее ведомый отвечает
                    state <= RD_ACK;
                end
                RD_ACK: begin
                    if (sda == 1'b0) begin
                        bit_ind <= 0;
                        state <= RD_DATA;
                    end else state <= RD_ACK;
                end
                RD_DATA: begin
                    byte[bit_ind] <= sda;
                    bit_ind <= bit_ind + 1'b1;
                    if (bit_ind == 3'd7) begin
                        bit_ind <= 0;
                        RAM[mem_ind] <= byte;
                        mem_ind <= mem_ind + 1'b1;
                        byte <= 8'b0;
                        wd <= 1'b1;
                        we <= 1'b1;
                        state <= SEND_ANS;
                    end
                end
                SEND_ANS: begin
                    wd <= 1'b1;
                    state <= STOP;
                end
                STOP: begin
                    wd <= 0;
                    #5;
                    wd <= 1'b1;
                    #5;
                    wd <= 1'b0;
                end
            endcase
        end
        1'b1: ;
        default: ;
        endcase
    end
end


endmodule






