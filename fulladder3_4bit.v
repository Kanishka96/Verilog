module fulladder3_4bit (a,b,cin,s,cout);

input [3:0]a;
input [3:0]b;
input cin;
output [3:0]s;
output cout;

wire carry0;
wire carry1;
wire carry2;

fulladder3_1bit fa1(a[0],b[0],cin,s[0],carry0);
fulladder3_1bit fa2(a[1],b[1],carry0,s[1],carry1);
fulladder3_1bit fa3(a[2],b[2],carry1,s[2],carry2);
fulladder3_1bit fa4(a[3],b[3],carry2,s[3],cout);

endmodule
