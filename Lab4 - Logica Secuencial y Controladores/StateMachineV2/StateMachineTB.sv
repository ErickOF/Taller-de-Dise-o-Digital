module StateMachineTB();

logic clk, start, rst, TimeOut, Win, Tie, Player, Ready, V;
logic Time, ChangeTurn, ValidateWin, PlayRandom, ValidatePlay, PrintSprint, PrintWin;

StateMachine FSM(clk, start, rst, TimeOut, Win, Tie, Player, Ready, V, Time, ChangeTurn, ValidateWin, PlayRandom, ValidatePlay, PrintSprint, PrintWin);

initial begin

clk = 0; start = 1; rst = 0; TimeOut = 0; Win = 0; Tie = 0; Player = 01; Ready = 0; V = 0;

end

always 
	#10 clk = !clk;
	
endmodule

