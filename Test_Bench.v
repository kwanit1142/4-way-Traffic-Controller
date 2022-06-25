module traffic_test();
reg clk; reg rst;
wire [2:0] light_A; wire [2:0]
light_B;
traffic uut
(.clk(clk), .rst(rst), .light_A(light_A
),
.light_B(light_B));
initial clk = 1;
always #(20) clk = ~clk;

initial begin
rst = 0;
# 40;
rst = 1;
# 40;
rst = 0;
$stop;
end
endmodule
