package zs
{
	public class TicTacToeLogic
	{
		private var board:Array;
		private var rows:Number;
		private var columns:Number;
		
		public function initialize()
		{
				board = [[0,0,0], [0,0,0], [0,0,0]];
				trace(board);
				trace("Board stats.");
				trace("board.length=" + board.length + ", board[0]=" + board[0]);
				trace("board[0].length=" + board[0].length);
				trace(" ");
				
				// Variables to make the rest of the code more legible
				rows = board.length;
				columns = board[0].length
		}
		
		public function outputBoard():void {
			trace("Outputting board for debugging purposes...");
			var output:String = "";
			
			// Top
			for(var i:Number = 0; i < columns; i++) {
				output += ("_" + i + "_|");
			}
			
			trace(output);
			
			// Rows + columns
			for(var row:Number = 0; row < rows; row++) {
				output = "";
				for(var column:Number = 0; column < board[row].length; column++) {
					output += (" " + board[row][column] + " |");
				}
				trace(output);
				
				output = "";
				for(var column:Number = 0; column < columns; column++) {
					output += "____";
				}
				
				trace(output); // <-- Cheap trick because I don't want to deal with this right now. Make it pretty later
			}
		}
		
		public function placeToken(x:int, y:int, token:int):void {
			trace("Placing token at [" + x + ", " + y + "]"); 
			if (spotTaken(x, y) == true) {
				return;
			}
			board[x][y] = token;
		}
		
		public function checkBoard():Boolean {
			trace("Checking the board for finishing conditions..");
			var finishCondition:Boolean = false; // Placeholder
			
			// Check for rows wins
			for(var row:int = 0; row < rows; row++) {
				// Check to see if all of the columns are the same
				// Just checks three columns for now, because I'm tired
				if (board[row][0] != 0) {
					if ((board[row][0] == board[row][1]) && (board[row][1] == board[row][2])) {
						return true;
					}
				}
			}
				
			//Check Columns (again with the three)
			for(var column = 0; column < columns; column++) {
				if (board[0][column] != 0) {
					if ((board[0][column] == board[1][column]) && (board[1][column] == board[2][column])) {
						return true;
					}
				}
			}
			
			// Check diagonally - again, just three
			if (board[0][0] != 0) {
				if ((board[0][0] == board[1][1]) && (board[1][1] == board[2][2])) {
						return true;
					}
			}
			
			if (board[0][2] != 0) {
				if ((board[0][2] == board[1][1]) && (board[1][1] == board[2][0])) {
						return true;
					}
			}
			
			
			
			
			return false; // TODO: Check 
		}
		
		public function clearBoard():void {
			for(var row:Number = 0; row < rows; row++) {
				for(var column:Number = 0; column < columns; column++) {
					board[row][column] = 0;
				}
			}
		}
		
		private function spotTaken(x:int, y:int):Boolean {
			//return !(board[x, y] == 0);
			return false; 
		}

	}
}