module humairBinaryToGray(G3,G2,G1,G0,B3,B2,B1,B0);
input B3,B2,B1,B0;
output G3,G2,G1,G0;
wire B3xorB2, B2xorB1, B1xorB0;
or (G3,B3);
xor (G2,B3,B2);
xor (G1,B2,B1);
xor (G0,B1,B0);
endmodule

module test;
reg B3,B2,B1,B0;
wire G3,G2,G1,G0;
humairBinaryToGray x(G3,G2,G1,G0,B3,B2,B1,B0);
initial
begin
B3=1'b 0;B2=1'b 0;B1=1'b 0;B0=1'b 0;#10
B3=1'b 0;B2=1'b 0;B1=1'b 0;B0=1'b 1;#10
B3=1'b 0;B2=1'b 0;B1=1'b 1;B0=1'b 0;#10
B3=1'b 0;B2=1'b 0;B1=1'b 1;B0=1'b 1;#10
B3=1'b 0;B2=1'b 1;B1=1'b 0;B0=1'b 0;#10
B3=1'b 0;B2=1'b 1;B1=1'b 0;B0=1'b 1;#10
B3=1'b 0;B2=1'b 1;B1=1'b 1;B0=1'b 0;#10
B3=1'b 0;B2=1'b 1;B1=1'b 1;B0=1'b 1;#10
B3=1'b 1;B2=1'b 0;B1=1'b 0;B0=1'b 0;#10
B3=1'b 1;B2=1'b 0;B1=1'b 0;B0=1'b 1;#10
B3=1'b 1;B2=1'b 0;B1=1'b 1;B0=1'b 0;#10
B3=1'b 1;B2=1'b 0;B1=1'b 1;B0=1'b 1;#10
B3=1'b 1;B2=1'b 1;B1=1'b 0;B0=1'b 0;#10
B3=1'b 1;B2=1'b 1;B1=1'b 0;B0=1'b 1;#10
B3=1'b 1;B2=1'b 1;B1=1'b 1;B0=1'b 0;#10
B3=1'b 1;B2=1'b 1;B1=1'b 1;B0=1'b 1;#10
B3=1'b 0;B2=1'b 0;B1=1'b 0;B0=1'b 0;
end
endmodule
