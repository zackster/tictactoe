// ActionScript file
import zs.TicTacToeLogic;

function init():void {
//	var myArray:Array = new Array();
//	for (var z:Number = 0; z < 11; z++) {
//	myArray[z] = (z + 1) * 2;
//	}
//	trace(myArray);
//	//this tracet: 2,4,6,8,10,12,14,16,18,20,22
//	
//	trace("zack's loop:");
//	for(var j:int = 0; j<9; j++) {
//		trace(j);
//	}
//	
//	var board:Array = new Array(9);
//      
//	for(var i:int = 0;i<10;i++) {
//		trace("Zack loop #2: " + i);
//	//
	var testRun:Boolean = false;

	var game:TicTacToeLogic = new TicTacToeLogic();
	game.initialize();
	
	
	if (testRun == true) {
		game.outputBoard();
		trace("Game over? " + game.checkBoard().toString());
		
		// Column tests
		trace("Column tests...");
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(0, 0, 1);
		game.placeToken(1, 0, 1);
		game.placeToken(2, 0, 1);
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
		
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(0, 1, 1);
		game.placeToken(1, 1, 1);
		game.placeToken(2, 1, 1);
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
		
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(0, 2, 1);
		game.placeToken(1, 2, 1);
		game.placeToken(2, 2, 1);
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
		
		// Row tests
		trace("Row tests...");
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(0, 0, 1);
		game.placeToken(0, 1, 1);
		game.placeToken(0, 2, 1);
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
		
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(1, 0, 1);
		game.placeToken(1, 1, 1);
		game.placeToken(1, 2, 1);
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
		
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(2, 0, 1);
		game.placeToken(2, 1, 1);
		game.placeToken(2, 2, 1);
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
		
		// Diagonal tests
		trace("Diagonal tests...");
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(0, 0, 1);
		game.placeToken(1, 1, 1);
		game.placeToken(2, 2, 1);
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
		
		trace("Prepopulate test. Game over? " + game.checkBoard().toString());
		game.placeToken(0, 2, 1);
		game.placeToken(1, 1, 1);
		game.placeToken(2, 0, 1);
		game.outputBoard();
		trace("Postpopulate test. Game over? " + game.checkBoard().toString());
		game.clearBoard();
	}
}