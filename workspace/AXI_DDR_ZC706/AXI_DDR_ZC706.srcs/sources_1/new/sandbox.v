`timescale 1ns / 1ps

module sandbox(
        input push_button,
        output led
    );
    assign led = push_button;
endmodule
