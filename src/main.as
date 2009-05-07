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
	var game:TicTacToeLogic = new TicTacToeLogic();
	game.initialize();
	game.outputBoard();
	game.placeToken(1, 1, 1);
	game.outputBoard();
}