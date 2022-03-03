module three_bit_odd_parity_gen(in,reset,clk,parity);
    output parity;
    input clk,reset,in;
    wire clk,reset,in;
    reg parity;
    parameter S0=1'b0,S1=1'b1;
    reg curr_stt, next_stt;

    always @(posedge clk) begin
        if(reset==1'b1) begin
            curr_stt <= S0;
        end
        else begin
            curr_stt <= next_stt;
        end
    end
    
    always @(curr_stt or in) begin
        case(curr_stt)
            S0: begin
                if(in) begin
                    next_stt=S1;
                end else begin
                    next_stt=S0;
                end
            end
            S1: begin
                if(in) begin
                    next_stt=S0;
                end else begin
                    next_stt=S1;
                end
            end
            default: next_stt=S0;
        endcase
    end

    always @(posedge clk ) begin
        if(reset==1'b1) begin
            parity <= 1'b0;
        end
        else begin
            case(curr_stt)
                S0: parity<=1'b1;
                S1: parity<=1'b0;
                default: parity<=1'b0;
            endcase
        end
    end
endmodule