module fsm_3_bit_odd_parity_generator(clock,reset,in,x);
input clock,reset,in;
output reg x;

parameter  state_0=3'b000, 
        state_1=3'b001, 
        state_2=3'b010, 
        state_3=3'b011, 
        state_4=3'b100, 
        state_5=3'b101, 
        state_6=3'b110 ;

reg[2:0] current_state;
reg[2:0] next_state;

always @(negedge clock) begin
    if(reset==1'b1)
        current_state<=state_0;
    else
        current_state=next_state;
end

always @(in or negedge clock) begin
    case(current_state)
    state_0:begin
        if(~in) begin
            next_state=state_2; x=0;
        end
        else begin
            next_state=state_1; x=1;
        end
    end

    state_1:begin
        if(~in) begin
            next_state=state_3; x=0;
        end
        else begin
            next_state=state_4; x=1;
        end
    end

    state_2:begin
        if(~in)begin
            next_state=state_4; x=0;
        end
        else begin
            next_state=state_3; x=1;
        end
    end

    state_3:begin
        if(~in) begin
            next_state=state_5; x=0; 
        end
        else begin
            next_state=state_6; x=1;
        end
    end
    state_4:begin
        if(~in) begin
            next_state=state_6; x=0; 
        end
        else begin
            next_state=state_5; x=1;
        end
    end
    state_5:begin
        next_state=state_0; x=0;
    end
    state_6:begin
        next_state=state_0; x=1;
    end

    default:begin
        next_state=state_0;
    end
endcase 
end

endmodule