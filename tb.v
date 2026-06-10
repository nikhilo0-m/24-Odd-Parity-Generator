`timescale 1ns/1ps

module odd_parity_generator_tb;

    reg  [3:0] data;     // Test input
    wire parity;         // Output parity bit

    // Instantiate the Design Under Test (DUT)
    odd_parity_generator DUT (
        .data(data),
        .parity(parity)
    );

    initial begin
        $display("Time\tData\tParity");
        $monitor("%0t\t%b\t%b", $time, data, parity);

        // Apply test vectors
        data = 4'b0000; #10;
        data = 4'b0001; #10;
        data = 4'b0011; #10;
        data = 4'b0101; #10;
        data = 4'b1111; #10;
        data = 4'b1010; #10;
        data = 4'b1100; #10;
        data = 4'b1001; #10;

        $finish;
    end

endmodule