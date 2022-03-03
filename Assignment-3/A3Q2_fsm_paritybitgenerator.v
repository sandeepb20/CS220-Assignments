module fsm_sequence_detector (input logic in, input logic reset, output logic out);

    reg [2:0] state;

    always @(in or state or reset) begin
        if (reset)
        begin
            out = 1'b0;
            state = 3'b000;
        end
        else
        begin
            case (state)
                3'b000:
                    begin
                        if (in) state = 3'b011;
                        else state = 3'b001;
                        out = 0;
                    end
                3'b001:
                    begin
                        if (in) state = 3'b100;
                        else state = 3'b010;
                        out = 0;
                    end
                3'b010:
                    begin
                        if (in) out = 1;
                        else out = 0;
                        state = 3'b000;
                    end
                3'b011:
                    begin
                        if (in) state = 3'b010;
                        else state = 3'b100;
                        out = 0;
                    end
                3'b100:
                begin
                    if (in) out = 0;
                    else out = 1;
                    state = 3'b000;
                end
                default:
                begin
                    out = 0;
                    state = 3'b000;
                end
            endcase
        end
        
    end

endmodule