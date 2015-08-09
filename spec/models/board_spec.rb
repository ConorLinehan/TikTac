require "spec_helper"

descibe Board do
	
	it 'intializes board' do
		board = Board.new
		expected_board = [0,0,0,
						  0,0,0,
						  0,0,0]
		board.board_matrix eql(expected_board)
	end

end