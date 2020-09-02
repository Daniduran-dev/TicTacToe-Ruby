require_relative 'players'

class Board
  def initialize
    @board = { a1: ' ', a2: ' ', a3: ' ', b1: ' ', b2: ' ', b3: ' ', c1: ' ', c2: ' ', c3: ' ' }
  end

  def display_board
    puts '  1 2 3'
    puts "a|#{@board[:a1]}|#{@board[:a2]}|#{@board[:a3]}|"
    puts "b|#{@board[:b1]}|#{@board[:b2]}|#{@board[:b3]}|"
    puts "c|#{@board[:c1]}|#{@board[:c2]}|#{@board[:c3]}|"
  end

  def empty_cells
    freecells = @board.select { |_k, v| v == ' ' }
    print freecells.keys
  end

  def update_board(position, round)
    @board[position] = (round.even? ? 'X' : 'O')
  end

  def validate_position(position, round)
    if @board[position].include?(' ')
      update_board(position, round)
    else
      system 'clear'
      display_board
      puts 'Please enter any of these coordenates in (letter + number) format. Ex: a1'
      empty_cells
    end
  end
end
