module adder_tb;

reg a, b, cin;
wire sum1, carry1;
wire sum2, carry2;

// Instantiate Half Adder
half_adder HA(a, b, sum1, carry1);

// Instantiate Full Adder
full_adder FA(a, b, cin, sum2, carry2);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    a=0; b=0; cin=0; #10;
    a=0; b=1; cin=0; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=1; cin=0; #10;

    a=1; b=1; cin=1; #10;

    $finish;
end

endmodule
