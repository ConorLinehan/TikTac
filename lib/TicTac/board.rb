
# 	 0| 1  | 2
# 	-----------
# 	 3| 4  | 5
# 	-----------
#    6| 7  | 8

class Board

	WINNING_POSITIONS = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[0,3,6],[1,4,7],[2,5,8]]

	attr_accessor :board_matrix

	# intializer
	def initialize 
		@board_matrix = [0,0,0,
						0,0,0,
						0,0,0]
	end

	#prints board
	def print

		puts "#{humanize_board_positon(0)} | #{humanize_board_positon(1)} | #{humanize_board_positon(2)}"
		puts "-------"
		puts "#{humanize_board_positon(3)} | #{humanize_board_positon(4)} | #{humanize_board_positon(5)}"
		puts "-------"
		puts "#{humanize_board_positon(6)} | #{humanize_board_positon(7)} | #{humanize_board_positon(8)}"

	end

	# Makes a players move
	def move(move,player)

		#Checks if move is valid
		if !(@board_matrix[move] == 0)
			raise "Position already filled"
			return
		elsif !((0...8) === move)
			raise "Position must be between 0 - 8"
		end
		#Makes move



		#Checks for wining condition?

	end

	def humanize_board_positon(position)
		case position

		when 0
			return "#{position}"

		when 1
			return "X"

		when 10
			return "O"
		else
			raise "Error with board"
			return
		end
	end

	######################
	# WINNING
	######################
	def is_win

		WINNING_POSITIONS.each do |m|
			total = 0
			m.each do |i|
				total += @board_matrix[i]
			end

			if total % 3 == 10
				return "X"
				break
			elsif total % 3 == 1
				return "O"
				break
			end
		end

	end

end