module onebit(a,b,cin,opcode,sum,cout);
input a,b,cin,opcode;
output sum,cout;
assign sum=a^(b^opcode)^cin;
assign cout=(a&cin)|(a&(b^opcode))|((b^opcode)&cin);
endmodule

module eightbit(a,b,opcode,res,cout,flag); //flag to check whether overflow occured or not? true if occured
input [7:0] a,b;
input opcode;
output [7:0] res;
output wire cout, flag;
wire [7:0] carry;
wire cin;
assign cin = opcode;
onebit S0(a[0],b[0],cin,opcode,res[0],carry[0]);
onebit S1(a[1],b[1],carry[0],opcode,res[1],carry[1]);
onebit S2(a[2],b[2],carry[1],opcode,res[2],carry[2]);
onebit S3(a[3],b[3],carry[2],opcode,res[3],carry[3]);
onebit S4(a[4],b[4],carry[3],opcode,res[4],carry[4]);
onebit S5(a[5],b[5],carry[4],opcode,res[5],carry[5]);
onebit S6(a[6],b[6],carry[5],opcode,res[6],carry[6]);
onebit S7(a[7],b[7],carry[6],opcode,res[7],carry[7]);
assign flag = carry[6]^carry[7];
assign cout = carry[7];
endmodule

