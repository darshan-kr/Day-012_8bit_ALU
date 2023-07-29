module tb;
  localparam n = 8;
  reg [n-1:0]a, b;
  reg [3:0]sel;
  wire [n:0]y;
  

  ALU w(a, b, sel, y);
  
  initial begin
    $monitor("a=%b, b=%b, sel=%b, y=%b", a, b, sel, y);
    $dumpfile("dump.vcd"); $dumpvars;
    a = 4'b0100; b= 4'b0001;
    
    sel=3'd0;
    #1;
    repeat(8) begin
      a = $random;
      b = $random;
    sel = sel+1;
    #1;
    end
  end
endmodule
