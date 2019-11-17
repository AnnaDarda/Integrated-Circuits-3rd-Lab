module tictactoe (
input logic [8:0] x,
input logic [8:0] o,
output logic error,
output logic full,
output logic winX,
output logic winO,
output logic noWin
);

logic count;

//error code
always_comb
begin
error=0;
	for(int i=0; i<9; i=i+1)
		begin
		if(x[i] && o[i])
		error=1;
		end		
		
end


//full code
/*always_comb
begin 
	full=0;
	count=0;
	for(int i=0; i<9; i=i+1)
		begin
		if(x[i] || o[i])
		count=count+1;
		end
		if(count==9)
		full=1;

end
*/

logic [8:0] sum;
always_comb
begin 
full=0;
		for(int i=0; i<9; i=i+1)
			sum[i]=x[i] || o[i];
	
		if(sum==9'b111111111)
		full=1;

end






//winX
always_comb
begin 
winX=0;
		if(x[0] && x[1] && x[2])
		winX=1;
		else
		if(x[3] && x[4] && x[5])
		winX=1;
		else
		if(x[6] && x[7] && x[8])
		winX=1;
		else
		if(x[0] && x[3] && x[6])
		winX=1;
		else
		if(x[1] && x[4] && x[7])
		winX=1;
		else
		if(x[2] && x[5] && x[8])
		winX=1;
		else
		if(x[0] && x[4] && x[8])
		winX=1;
		else
		if(x[2] && x[4] && x[6])
		winX=1;
		
end



//winO
always_comb
begin 
winO=0;
noWin=0;
		if(o[0] && o[1] && o[2])
		winO=1;
		else
		if(o[3] && o[4] && o[5])
		winO=1;
		else
		if(o[6] && o[7] && o[8])
		winO=1;
		else
		if(o[0] && o[3] && o[6])
		winO=1;
		else
		if(o[1] && o[4] && o[7])
		winO=1;
		else
		if(o[2] && o[5] && o[8])
		winO=1;
		else
		if(o[0] && o[4] && o[8])
		winO=1;
		else
		if(o[2] && o[4] && o[6])
		winO=1;
		
		if(!winO && !winX)
		noWin=1;
end



endmodule