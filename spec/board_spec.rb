require_relative '../lib/board.rb'

describe Board do
  let(:board) { Board.new }

  describe '#display_board' do
    it 'checks if there is a string' do
      expect(board.display_board).to be_a(String)
    end
    it 'checks if there is not an integer' do
      expect(board.display_board).not_to be_a(Integer)
    end
    it 'displays the board on screen' do
      expect(board.display_board).to eql "   1   2   3\na|   |   |   |\nb|   |   |   |\nc|   |   |   |"
    end
    it 'checks if there is a value stored in board' do
      expect(board.display_board).not_to be_nil
    end
  end

  describe '#empty_cells' do
    it 'Checks if there is an array with the keys representing the free positions' do
      expect(board.empty_cells).to be_a(Array)
    end
    it 'checks that a string is not returned' do
      expect(board.empty_cells).not_to be_a(String)
    end
    it 'returns an array with the symbols of the free positions' do
      expect(board.empty_cells).to eql %i[a1 a2 a3 b1 b2 b3 c1 c2 c3]
    end
    it 'checks that nil is not returned' do
      expect(board.empty_cells).not_to be_nil
    end
  end
  # rubocop: disable Layout/LineLength
  describe '#update_board' do
    it "sets an 'X' or a 'O' in a board position given depending if the round is even or not" do
      board.update_board(:a1, 0)
      expect(board.instance_variable_get(:@board)).to eql({ a1: 'X', a2: ' ', a3: ' ', b1: ' ', b2: ' ', b3: ' ', c1: ' ', c2: ' ', c3: ' ' })
    end
    it "checks that the symbol 'O' is not returned" do
      expect(board.instance_variable_get(:@board)).not_to eql({ a1: 'O', a2: ' ', a3: ' ', b1: ' ', b2: ' ', b3: ' ', c1: ' ', c2: ' ', c3: ' ' })
    end
  end
  # rubocop: enable Layout/LineLength
  describe '#validate_position' do
    it 'returns true if the position is available and within the board' do
      expect(board.validate_position(:a1)).to eql true
    end
    it 'checks that false is not returned when a valid position is entered' do
      expect(board.validate_position(:a1)).not_to eql false
    end
  end
  describe '#winner_checking' do
    before do
      board.update_board(:a1, 0)
      board.update_board(:a2, 2)
      board.update_board(:a3, 4)
    end
    it 'returns the winner mark' do
      expect(board.winner_checking).to eql({ %i[a1 a2 a3] => 'X' })
    end
    it 'checks that the loser mark is not returned' do
      expect(board.winner_checking).not_to eql({ %i[a1 a2 a3] => 'O' })
    end
  end
end
