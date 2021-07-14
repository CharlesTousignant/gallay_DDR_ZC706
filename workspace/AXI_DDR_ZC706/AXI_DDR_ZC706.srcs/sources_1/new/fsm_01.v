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
    reg[2:0] NEXT_STATE = IDLE;
    reg[31:0] REG_VALUE = 32'd0;
    reg REG_VALID = 1'b0;
    
    // STATE CHANGE
    always @(posedge clk)
    begin
        if(reset === 1'b1)
            STATE <= IDLE;
        else
            STATE <= NEXT_STATE;
    end
    
    // NEXT STAGE CHANGE
    always @(posedge clk)
    begin
        NEXT_STATE = STATE;
        case(STATE)
            IDLE:
            begin
                led = 1'b0;
                ready = 1'b1;
                REG_VALID = 1'b0;
                REG_VALUE <= 32'd0;
                if(valid === 1'b1)
                    NEXT_STATE = WRITE_REG;
                else
                    NEXT_STATE = IDLE;
            end
            
            WRITE_REG:
            begin
                led = 1'b0;
                ready = 1'b0;
                REG_VALID = 1'b1;
                REG_VALUE <= din;
                if(REG_VALID)
                    NEXT_STATE = COMP;
                else
                    NEXT_STATE = WRITE_REG;
            end
            
            COMP:
            begin
                led = 1'b0;
                ready = 1'b0;
                if(REG_VALUE > A_VALUE)
                    NEXT_STATE = GREATER;
                else
                    NEXT_STATE = LOWER;
            end
            
            GREATER:
            begin
                led = 1'b1;
                ready = 1'b1;
                REG_VALID = 1'b0;
                REG_VALUE <= 32'd0;
                if(valid === 1'b1)
                    NEXT_STATE = WRITE_REG;
                else
                    NEXT_STATE = GREATER;
            end
            
            LOWER:
            begin
                led = 1'b0;
                ready = 1'b1;
                REG_VALID = 1'b0;
                REG_VALUE <= 32'd0;
                if(valid === 1'b1)
                    NEXT_STATE = WRITE_REG;
                else
                    NEXT_STATE = LOWER;
            end
        endcase
    end
    
endmodule
