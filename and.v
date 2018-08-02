module and_gate(a, b, o);
input a;
input b;
wire a;
wire b;

output o;
reg o;

always @ (a or b)
    o = a & b;

endmodule

module and_gate_tb();

reg a, b;
wire o;

initial begin
    $display ("time\t a b o");
    $monitor ("%g\t %b %b %b", $time, a, b, o);
    a = 0;
    b = 0;
    #1 a = 1;
    #1 b = 0;
    #2 a = 1;
    #2 b = 1;
    #3 a = 0;
    #3 b = 1;
end

and_gate DUT(
    a,
    b,
    o
);

endmodule
