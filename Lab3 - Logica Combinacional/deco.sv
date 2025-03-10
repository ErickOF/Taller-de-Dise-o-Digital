module deco(input x, y, z, w,
				output a, b, c, d, e, f, g);
logic U1;
logic U2;
logic U3;
logic U4;
logic U5;
logic U6;
logic U7;

always_comb begin
	U1 = ~((x & ~w)|(~x & z)|(y & z)|(~x & y & w)|(x & ~y & ~z)|(~y & ~w));
	U2 = ~((~y & ~w)|(~x & z & w)|(~y & ~z)|(x & ~z & w)|(~x & ~z & ~w));
	U3 = ~((~y & w)|(~z & w)|(~x & y)|(x & ~y)|(~y & ~z));
	U4 = ~((~y & ~z & ~w)|(~y & z & w)|(y & ~z & w)|(~x & z & ~w)|(x & y & ~w));
	U5 = ~((z & ~w)|(~y & ~w)|(x & z)|(x & y));
	U6 = ~((y & ~w)|(x & ~y)|(x & z)|(~x & y & ~z)|(~z & ~w));
	U7 = ~((~y & z)|(z & ~w)|(x & ~y)|(x & w)|(~x & y & ~z));
end
			
assign a = U1;
assign b = U2;
assign c = U3;
assign d = U4;
assign e = U5;
assign f = U6;
assign g = U7;

endmodule 		

