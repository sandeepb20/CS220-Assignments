module seq_detect(clk,in,out);
    input clk;
    input in;
    output reg out;
    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    reg [1:0] state;
    always @(posedge clk or in) begin
        case (state)
            S0: begin
                if(in) begin
                    out=1'b0;
                    state<=S1;
                end
                else begin
                    out=1'b0;
                end
            end
            S1: begin
                if(~in) begin
                    out=1'b0;
                    state<=S2;
                end
                else begin
                    out=1'b0;
                end
            end
            S2: begin
                if(in) begin
                    out=1'b0;
                    state<=S3;
                end
                else begin
                    out=1'b0;
                    state<=S0;
                end
            end
            S3: begin
                if(in) begin
                    out=1'b0;
                    state<=S1;
                end
                else begin
                    out=1'b1;
                    state<=S2;
                end
            end
            default: begin
                out=1'b0;
                state<=S0;
            end
            endcase
    end
endmodule