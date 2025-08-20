module TFLIPFLOPPOSEDGE( input clk, rst_n, input t,
output reg q,
output q_bar
);
always@(posedge clk) 
begin // for synchronous reset
  //WRITE THE CONDITION OF TOGGLE FLIPFLOP HERE WITH RESET AND 
  //IMPLEMENT THE T LOGIC BY CONDITIONAL OPERATOR
assign q_bar = ~q;
endmodule
