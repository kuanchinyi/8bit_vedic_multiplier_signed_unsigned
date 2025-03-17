module vmsu_8bit_top_tb;

reg clk;
reg reset;
reg [7:0] A;
reg [7:0] B;
reg Control;
wire [15:0] P;

//instantiate DUT
vmsu_8bit_top DUT1 (.a(A), .b(B), .control(Control), .clk(clk), .rst(reset), .p(P));

//clock signal
initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

//simulation stop after 400 cycle
initial begin
	#1000 $finish;
end

//input signal
initial begin

	reset = 1;
	Control = 0;
	A=0;
	B=0;
	
	#1;
	reset = 0;

	repeat (10) @ (posedge clk) //wait for reset to settle

	forever @ (negedge clk) begin
		A <= $random % 256;
		B <= $random % 256;
	end
end

//output checker by mimic the DUT functionality
reg [15:0] P_1, P_2, P_3, P_out;
always @ (posedge clk, posedge reset) begin
	if (reset) begin
		P_1 <=0;
		P_2 <=0;
		P_3 <=0;
		P_out <=0;
	end
	else begin 	
		P_1 <= A * B;
		P_2 <= P_1;
		P_3 <= P_2;
		P_out <= P_3;
	end
end

always @ (posedge clk) begin
	#1 
	if (P == P_out)
		$display ("time=%0t, A=%d, B=%d, Control=%b, Clk=%b, Rst=%b, P=%d,  is correct", $time, A, B, Control, clk, reset, P);

	else begin
		$display ("time=%0t, A=%d, B=%d, Control=%b, Clk=%b, Rst=%b, P=%d is wrong. P should be %d", $time, A, B, Control, clk, reset, P, P_out);
		$finish;
	end
end

endmodule
