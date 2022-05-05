// initialising module
module onebit(a,b,cin,opcode,sum,cout);

// port declaration
input a,b,cin,opcode;
output sum,cout;

assign sum=a^(b^opcode)^cin; // sum calculation
assign cout=(a&cin)|(a&(b^opcode))|((b^opcode)&cin);  // carry out after operation
endmodule