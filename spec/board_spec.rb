require_relative '../lib/board.rb'

describe Board do
  let(:board) { Board.new }

  describe '#display_board' do
    it 'checks if there is a string' do
      expect(board.display_board).to be_a(String)
    end
    it 'displays the board on screen' do
      expect(board.display_board).to eql "   1   2   3\na|   |   |   |\nb|   |   |   |\nc|   |   |   |"
    end
  end

  describe '#empty_cells' do
    it 'shows an array with the keys representing the free positions' do
      expect(board.empty_cells).to be_a(Array)
    end
    it 'returns an array with the symbols of the free positions' do
      expect(board.empty_cells).to eql %i[a1 a2 a3 b1 b2 b3 c1 c2 c3]
    end
  end
  # rubocop: disable Layout/LineLength
  describe '#update_board' do
    it "sets an 'X' or a 'O' in a board position given depending if the round is even or not" do
      board.update_board(:a1, 0)
      expect(board.instance_variable_get(:@board)).to eql({ a1: 'X', a2: ' ', a3: ' ', b1: ' ', b2: ' ', b3: ' ', c1: ' ', c2: ' ', c3: ' ' })
    end
  end
  # rubocop: enable Layout/LineLength
  describe '#validate_position' do
    it 'returns true if the position is available and within the board' do
      # board.validate_position(:a1)
      expect(board.validate_position(:a1)).to eql true
    end
  end
  describe '#winner_checking' do

  end
end
