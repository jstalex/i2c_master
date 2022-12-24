`timescale 1ns / 1ps

module mstr(
    input mode,
    
    input [6:0] address,
    input [7:0] wdata,
    
    input clk,
    input rst,
        
    output wire scl,
    inout sda
);

reg [7:0] RAM [0:5];
reg [7:0] byte;

reg we;
reg [4:0] mem_ind;
reg [2:0] bit_ind;

reg wd;
// reg slave_ans;

assign sda = we ? wd : 1'bz;

initial begin 
    mem_ind <= 1'b0; 
    bit_ind <= 1'b0;
    byte <= 8'b0;
    wd <= 1'b1;
    we <= 1'b1;
    
    for (integer i = 0; i < 6; i = i+1) begin
        RAM[i] <= 8'b0;
    end
end 
reg [3:0] state;
	
parameter   ADDR = 0,  // for reading
			RW = 1,   
			RD_ACK = 2,   
			RD_DATA = 3,  
			SEND_ANS = 4, 
			STOP = 5,
			START = 6,
			
			IDLE = 8,
			
			RD_ACK_1 = 9,
			WR_ACK = 7,
			WR_DATA = 6;
			 
initial state <= START;

reg div_clk;
always @(negedge clk, posedge rst) begin
    if(rst) div_clk <= 0;
    else div_clk = ~div_clk;
end

assign scl = div_clk;

always @(posedge clk) begin
    if (!rst) begin
            case(mode)
            1'b0: begin // reading
                case(state)
                    START: begin
                        if (scl == 1) begin
                            we <= 1'b1;
                            wd <= 0;
                            state <= ADDR;
                        end
                    end
                    
                    ADDR: begin
                        if (scl == 0) begin
                            we <= 1'b1;
                            // bit_ind <= 0;
                            wd <= address[bit_ind];
                            if (bit_ind == 3'd7) begin
                                bit_ind <= 0;
                                wd <= 0;
                                state <= RW;
                            end
                            bit_ind <= bit_ind + 1'b1;
                        end
                    end
                    
                    RW: begin
                        wd <= 0;
                        if (scl == 0) begin
                            we <= 1'b0;
                            // далее ведомый отвечает
                            state <= RD_ACK;
                        end
                    end
                    RD_ACK: begin
                        if (scl == 0) begin
                            state <= RD_DATA;
                        end
                        if (scl == 1) begin
                            if (sda == 1'b0) begin
                                bit_ind <= 0;
                            end // else state <= RD_ACK;
                        end
                    end
                    RD_DATA: begin
                        if (scl == 1) byte[bit_ind] <= sda;
                        if (scl == 0) begin
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
                    end
                    SEND_ANS: begin
                        if (scl == 0) begin
                            wd <= 1'b0;
                            state <= STOP;
                        end
                    end
                    STOP: begin
                        // nack signal
                        if (scl == 1) begin
                            wd <= 1'b1;
                            state <= IDLE;
                        end
                    end
                    IDLE: begin
                        wd <= 1;
                    end
                endcase
            end
            1'b1: begin // writing
                case(state)
                    START: begin
                        if (scl == 1) begin
                            we <= 1'b1;
                            wd <= 0;
                            state <= ADDR;
                        end
                    end
                    ADDR: begin
                        if (scl == 0) begin
                            we <= 1'b1;
                            // bit_ind <= 0;
                            wd <= address[bit_ind];
                            if (bit_ind == 3'd7) begin
                                bit_ind <= 0;
                                wd <= 1;
                                state <= RW;
                            end
                            bit_ind <= bit_ind + 1'b1;
                        end
                    end
                    
                    RW: begin
                        wd <= 1;
                        if (scl == 0) begin
                            we <= 1'b0;
                            // далее ведомый отвечает
                            state <= RD_ACK;
                        end
                    end
                    RD_ACK: begin
                        if (scl == 0) begin
                            state <= RD_DATA;
                        end
                        if (scl == 1) begin
                            if (sda == 1'b0) begin
                                bit_ind <= 0;
                            end // else state <= RD_ACK;
                        end
                    end
                    
                    WR_DATA: begin
                        if (scl == 0) begin
                            wd <= RAM[mem_ind-1][bit_ind];
                            bit_ind <= bit_ind + 1'b1;
                            if (bit_ind == 3'd7) begin
                                bit_ind <= 0;
                                wd <= 1'b1;
                                we <= 1'b1;
                                state <= RD_ACK_1;
                            end
                        end
                    end
                    
                    RD_ACK_1: begin
                        if (scl == 0) begin
                            state <= RD_DATA;
                        end
                        if (scl == 1) begin
                            if (sda == 1'b0) begin
                                bit_ind <= 0;
                            end // else state <= RD_ACK;
                        end
                    end
                    STOP: begin
                        // nack signal
                        if (scl == 1) begin
                            wd <= 1'b1;
                            state <= IDLE;
                        end
                    end
                    IDLE: begin
                        wd <= 1;
                    end
                endcase
            end
            default: ;
            endcase
        end
    end

endmodule






