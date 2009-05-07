package zs
{
	public class TicTacToeLogic
	{
		private var board:Array;
		
		public function initialize()
		{
				board = [[0,0,0], [0,0,0], [0,0,0]];
				trace(board);
				trace("Board stats.");
				trace("board.length=" + board.length + ", board[0]=" + board[0]);
				trace("board[0].length=" + board[0].length);
				trace(" ");
		}
		
		public function outputBoard():void {
			trace("Outputting board for debugging purposes...");
			var output:String = "";
			
			// Top
			for(var i:Number = 0; i < board[0].length; i++) {
				output += ("_" + i + "_|");
			}
			
			trace(output);
			
			// Rows + columns
			for(var row:Number = 0; row < board.length; row++) {
				output = "";
				trace("________________________________________"); // <-- Cheap trick because I don't want to deal with this right now. Make it pretty later
				for(var column:Number = 0; column < board[row].length; column++) {
					output += (" " + board[row][column] + " |");
				}
				trace(output);
			}
		}
		
		public function placeToken(x:int, y:int, token:int):void {
			trace("Placing token at [" + x + ", " + y + "]"); 
			if (spotTaken(x, y) == true) {
				return;
			}
			board[x,y] = token;
		}
		
		public function checkBoard():Boolean {
			return false; // Placeholder
		}
		
		private function spotTaken(x:int, y:int):Boolean {
			//return !(board[x, y] == 0);
			return false; 
		}

	}
}