module seqdet
(
   input wire x,
   input wire clk,
   input wire [5:0] seq,
   input wire rst,
   output reg z
);
 
  reg [5:0] temp;
  //reg [5:0] out=6'b101010;
 
  always @ (posedge clk,posedge rst)
   if(rst)
      temp <= 6'd0;
   else
      temp <= {x,temp[5:1]};
  
  always @(temp)
    if(temp==seq)
      z=1'b1;
    else
      z=1'b0;

    
  
  
endmodule 

