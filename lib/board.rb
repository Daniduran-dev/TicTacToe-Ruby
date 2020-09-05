class Board
  def initialize
    @board = { a1: ' ', a2: ' ', a3: ' ', b1: ' ', b2: ' ', b3: ' ', c1: ' ', c2: ' ', c3: ' ' }
  end

  def display_board
    display = "  1 2 3\na|#{@board[:a1]}|#{@board[:a2]}|#{@board[:a3]}|\nb|#{@board[:b1]}|#{@board[:b2]}|#{@board[:b3]}|\nc|#{@board[:c1]}|#{@board[:c2]}|#{@board[:c3]}|"
  end

  def empty_cells
    freecells = @board.select { |_k, v| v == ' ' }
    freecells.keys
  end

  def update_board(position, round)
    @board[position] = (round.even? ? 'X' : 'O')
  end

  def validate_position(position)
    true if @board.include?(position) && @board[position].include?(' ')
  end

  def winner_checking
    @win_combo = [%i[a1 a2 a3], %i[b1 b2 b3], %i[c1 c2 c3],
                  %i[a1 b1 c1], %i[a2 b2 c2], %i[a3 b3 c3],
                  %i[a1 b2 c3], %i[c1 b2 a3]]
    wins = {}
    @win_combo.each do |k|
      case @board.values_at(*k)
      when %w[X X X] then wins[k] = 'X'
      when %w[O O O] then wins[k] = 'O'
      end
    end
    wins
  end
end
