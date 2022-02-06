module dff(output reg q, input d, input clr, input clk);
    always @ (posedge clk or negedge clr)  
        if (!clr)  
            q <= 0;  
        else  
            q <= d;  
endmodule  