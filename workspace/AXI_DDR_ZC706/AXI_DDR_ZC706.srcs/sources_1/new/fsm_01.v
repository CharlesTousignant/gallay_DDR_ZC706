`timescale 1ns / 1ps


module fsm_01(
        input[31:0] din,
        input clk, reset,
        input valid,
        output reg ready, led
    );
    localparam IDLE = 3'b000, WRITE_REG = 3'b001, COMP = 3'b010, GREATER = 3'b011, LOWER = 3'b100;
    localparam A_VALUE = 32'd1807;
    reg[2:0] STATE = IDLE;
    reg[31:0] REG_VALUE = 32'd0;
    reg REG_VALID = 1'b0;
    
    // Outputs
    always @(STATE)
    begin
        case (STATE)
            IDLE:
            begin
                ready = 1'b1;
                led = 1'b0;
                REG_VALID = 1'b0;
            end
            
            WRITE_REG:
            begin
                ready = 1'b0;
                led = 1'b0;
                REG_VALID = 1'b1;
                REG_VALUE <= din;
            end
            
            WRITE_REG:
            begin
                ready = 1'b0;
                led = 1'b0;
                REG_VALID = 0'b0;
            end
            
            COMP:
            begin
                ready = 1'b0;
                led = 1'b0;
                REG_VALID = 0'b0;
            end
            
            GREATER:
            begin
                ready = 1'b1;
                led = 1'b1;
                REG_VALID = 0'b0;
            end
            
            LOWER:
            begin
                ready = 1'b1;
                led = 1'b0;
                REG_VALID = 0'b0;
            end
        endcase
    end
    //
    
    // States
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            STATE = IDLE;
        else
            case (STATE)
                IDLE:
                    if (valid === 1'b1)
                        STATE = WRITE_REG;
                    else
                        STATE = IDLE;
                WRITE_REG:
                    if (REG_VALID === 1'b1)
                        STATE = COMP;
                    else
                        STATE = WRITE_REG;
                COMP:
                    if (REG_VALUE > A_VALUE)
                        STATE = GREATER;
                    else
                        STATE = LOWER;
                GREATER:
                    if (valid === 1'b1)
                        STATE = WRITE_REG;
                    else
                        STATE = GREATER;
                LOWER:
                    if (valid === 1'b1)
                        STATE = WRITE_REG;
                    else
                        STATE = LOWER;
            endcase   
    end
    
endmodule
