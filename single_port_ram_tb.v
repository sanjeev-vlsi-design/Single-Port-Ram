
module single_port_ram_tb;

parameter ADDR_WIDTH = 4;
parameter DATA_WIDTH = 8;

reg clk;
reg we;
reg [ADDR_WIDTH-1:0] addr;
reg [DATA_WIDTH-1:0] din;
wire [DATA_WIDTH-1:0] dout;

single_port_ram #(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH)) uut (
  .clk(clk),
  .we(we),
  .addr(addr),
  .din(din),
  .dout(dout)
);
initial clk = 0;
always #5 clk = ~clk; 

 initial begin
 
  we = 1; addr = 4'b0000; din = 8'b10101010;
  #10; we = 0;
  #10;

  we = 1; addr = 4'b0001; din = 8'b01010101;
  #10; we = 0; 
  #10;

   we = 0; addr = 4'b0000; 
   #10;

   we = 0; addr = 4'b0001; 
   #10;

   $stop;
  end

endmodule
