module mux4_1();
wire Y;
reg i0,i1,i2,i3,s0,s1;

initial begin
$monitor ("Y=%b i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b", Y,i0,i1,i2,i3,s0,s1);
i0=1'b1;i1=1'b0;i2=1'b1;i3=1'b0;
s0=1'b0;s1=1'b0;
#100;
s0=1'b0;s1=1'b1;
#100;
s0=1'b1;s1=1'b0;
#100;
s0=1'b1;s1=1'b1;
#100;
end 
endmodule

module mux4_1(Y,i0,i1,i2,i3,s1,s0);
output Y;
input i0,i2,i1,i3;
input s1,s0;
assign Y= (~s1 & ~s0 & i0)|(~s1 & s0 & i1)|(s1 & ~s0 & i2)|(s1 & s0 & i3);
endmodule
