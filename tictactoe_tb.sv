module tictactoe_tb;

 logic [8:0] x;
 logic [8:0] o;
 logic error;
 logic full;
 logic winX;
 logic winO;
 logic noWin;
 




tictactoe
my_tic
     (.x (x),
     .o (o),
     .error (error),
     .full (full),
	 .winX (winX),
	 .winO (winO),
	 .noWin (noWin));
initial begin
//Time 0
 $display("Starting Testbench");
 //win o
 #5ns
 o<=9'b101010101;
 x<=9'b010101010;
#5ns;
 //winx
  x<=9'b101010101;
  o<=9'b010101010;
 #5ns;
 //wino
  o<=9'b010010011;
  x<=9'b101101100;
#5ns;
 //error
  o<=9'b111010101;
 x<=9'b010101010;
#5ns;
 //error not full
  o<=9'b001110101;
  x<=9'b010101010;
 #5ns;
 //not full
  o<=9'b001010001;
  x<=9'b010101010;
 #5ns;
 
  o<=9'b011100101;
  x<=9'b100011010;
 
 $display("Finished");
end
endmodule
