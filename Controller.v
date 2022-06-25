module traffic(
input clk,
input rst,
output reg [2:0] light_A,
output reg [2:0] light_B
);
reg [3:0] state;
reg [3:0] count;
parameter
S0=6'b000001,S1=6'b00001
0,S2=6'b000100,S3=6'b0010
00,S4=6'b010000,S5=6'b100
000;
parameter
sec5=4'd5,sec1=4'd1;

always @(posedge clk or posedge rst)
if (rst ==1) begin state <=S0; count <=0;
end
else
case(state)
S0: if (count < sec5) begin state <= S0; count <= count +1;
end
else begin state <=S1; count <=0;
end
S1: if (count < sec1) begin state <= S1; count <= count +1;
end
else begin state <=S2; count <=0;
end
S2: if (count < sec1) begin state <= S2; count <= count +1;
end
else begin state <=S3; count <=0;
end
S3: if (count < sec5) begin state <= S3; count <= count +1;
end
else begin state <=S4; count <=0;
end
S4: if (count < sec1) begin state <= S4; count <= count +1;
end
else begin state <=S5; count <=0;
end
S5: if (count < sec1) begin state <= S5; count <= count +1;
end
else begin state <=S0; count <=0;
end
default state <=S0;
endcase

always @(*)
begin
case (state)
S0: begin light_A <= 3'b001; light_B <= 3'b100;
end
S1: begin light_A <= 3'b010; light_B <= 3'b100;
end
S2: begin light_A <= 3'b100; light_B<= 3'b100;
end
S3: begin light_A <= 3'b100; light_B <= 3'b001;
end
S4: begin light_A <= 3'b100; light_B <= 3'b010;
end
S5: begin light_A<= 3'b100; light_B <= 3'b100;
end
default begin light_A <= 3'b100; light_B <=
3'b100;
end
endcase
end
endmodule
