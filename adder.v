module adder(
    input a, b, cin,
    output o, cout
);
wire a;
wire b;
wire cin;

reg o;
reg cout;

always @(a or b or cin)
    o = (a xor b) xor cin;
    cout = (a and b) or ((a xor b) and cin);

endmodule

module adder_tb();

reg a, b, cin;
wire o, cout;

initial begin
