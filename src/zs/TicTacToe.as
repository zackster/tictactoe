package zs
{
	public class TicTacToeLogic
	{
		private var board:Array;
		
		public function TicTacToe()
		{
				var myArray:Array = [[0,0,0], [0,0,0], [0,0,0]];			
		}
		
		public function outputBoard():void {
			// Top
			for(var i:Number = 0; i < board[0].length - 1; i++) {
				trace("_" + i + "_|");
			}
			
			// Rows + columns
			for(var row:Number = 0; row < board.length - 1; row++) {
				trace("________________________________________"); // <-- Cheap trick because I don't want to deal with this right now. Make it pretty later
				for(var colum:Number = 0; column < board[row].length - 1; column++) {
					trace(" " + board[row][column] + " |");
				}
			}
		}
		
		public function placeToken(x:int, y:int, token:int):Boolean {
			if (spotTaken(board[x, y])
				return false;
			board[x,y] = token;
		}
		
		public function checkBoard():Boolean {
			return false; // Placeholder
		}
		
		private function spotTaken(x:int, y:int):Boolean {
			return !(board[x, y] == 0); 
		}

	}
}