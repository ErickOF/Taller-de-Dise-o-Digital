module escogerPos(input reset, impulso, select,
                output logic [3:0] pos,
					 output logic Ready);
					 
					 


always_ff @(posedge impulso, posedge reset)
begin
    if (reset) begin 
						pos <= 4'b0; 
						Ready <= 1'b0; 
					end
	 else if (pos == 4'b1001) 
		pos <= 4'b0;
		else begin
			pos <= pos + 4'b0001;
			if (select) 
				Ready <= 1'b1;
		end
end

endmodule
