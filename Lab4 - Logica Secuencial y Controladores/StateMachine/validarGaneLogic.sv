module validarGaneLogic(input clock, reset,
								output ValidateWin, playerID);

logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9; //Boxes with ID

logic current_state;

logic en1, en2, en3, en4, en5, en6, en7, en8, en9, enPlayer;

logic enWT;

logic [1:0] playerRegID;

//Player Registers

regPlayer player(enPlayer, clock, reset, playerRegID;);

//Position Registers

regPos box1(en1, clock, reset, playerID, pos1);
regPos box2(en2, clock, reset, playerID, pos2);
regPos box3(en3, clock, reset, playerID, pos3);
regPos box4(en4, clock, reset, playerID, pos4);
regPos box5(en5, clock, reset, playerID, pos5);
regPos box6(en6, clock, reset, playerID, pos6);
regPos box7(en7, clock, reset, playerID, pos7);
regPos box8(en8, clock, reset, playerID, pos8);
regPos box9(en9, clock, reset, playerID, pos9);

// current state registers 
always_ff @(posedge clock or posedge reset) 

begin 
 if(reset)
	current_state <= 3'b0;
end 


always_comb


	if((pos1 == pos2 && pos2 == pos3) || (pos4 == pos5 && pos5 == pos6) || 
		(pos7 == pos8 && pos8 == pos9) || (pos1 == pos4 && pos4 == pos7) ||
		(pos2 == pos5 && pos5 == pos8) || (pos3 == pos6 && pos6 == pos9) || 
		(pos1 == pos5 && pos5 == pos9) || (pos1 == pos4 && pos4 == pos7) || 
		(pos3 == pos5 && pos5 == pos7)) begin
		
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		ValidateWin = 1;
		enPlayer = 0;
		end
	else
		begin
		en1 = 0; en2 = 0; en3 = 0; en4 = 0; en5 = 0; en6 = 0; en7 = 0; en8 = 0; en9 = 0;
		ValidateWin = 0;
		enPlayer = 1;
		playerID = playerRegID;
		end

endmodule
