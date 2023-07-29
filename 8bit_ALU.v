module ALU#(parameter n = 8)
  (
    input [n-1:0]a, b,
    input [2:0]sel,
    output reg [n:0]y);
  always@(*)
    begin
      case(sel)
        0:y = a&b;
        1:y = a|b;
        2:y = ~(a&b);
        3:y = ~(a|b);
        4:y = a^b;
        5:y = ~a;
        6:y = a+b;
        7:y = a-b;
        default:y = '1;
      endcase
    end
endmodule
