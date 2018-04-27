// Slow blinking a LED

/* module */
module leds (
	
    input CLOCK_50,
	 input [0:0] KEY,
    output reg[ 1:0] LEDG
    
);

    /* reg */
    reg data1 = 1'b1;
    reg [32:0] counter;
    reg state;
    
    /* assign */
    //assign LEDG[0] = state;
    //assign LEDG[1] = data1;
    
    /* always */
    always @ (posedge CLOCK_50) begin
        counter <= counter + 1;
        state <= counter[26]; // <------ data to change
    end
	
	always @ (posedge CLOCK_50) begin
		if (KEY[0] == 1)begin
		LEDG <= 8'b11111111;
	
	end else begin
	 LEDG <= state;
	 end
	 
	
end
endmodule
