`timescale 1ns / 1ps

// Odd Parity Generator
// Generates a parity bit such that the total number
// of 1's in data + parity bit is always odd.

module odd_parity_generator (
    input  [3:0] data,   // 4-bit input data
    output parity        // Odd parity output
);

    // XOR of all bits gives even parity.
    // Invert it to generate odd parity.
    assign parity = ~(data[0] ^ data[1] ^ data[2] ^ data[3]);

endmodule
