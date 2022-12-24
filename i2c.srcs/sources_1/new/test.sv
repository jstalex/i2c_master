`timescale 1ns / 1ps


module test(
    input clk,
    input rst
);

logic new_clk;
always_ff @(posedge clk, posedge rst) begin
    if(rst) new_clk <= 0;
    else new_clk = ~new_clk;
end


endmodule
