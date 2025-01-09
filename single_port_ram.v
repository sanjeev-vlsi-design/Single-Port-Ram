module single_port_ram #(parameter ADDR_WIDTH = 4, DATA_WIDTH = 8)(
    input clk,                 
    input we,                 
    input [ADDR_WIDTH-1:0] addr, 
    input [DATA_WIDTH-1:0] din,  
    output reg [DATA_WIDTH-1:0] dout 
);

 reg [DATA_WIDTH-1:0] mem [(2**ADDR_WIDTH)-1:0];

 always @(posedge clk) begin
 if (we) begin
    mem[addr] <= din;   
 end else begin
    dout <= mem[addr];      
 end
 end

endmodule
