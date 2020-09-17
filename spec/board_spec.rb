require './lib/board'
describe Board do
  let(:board) { Board.new }
  let(:position) {:a1}
  let(:round) {0}
  describe "#display_board" do
    it "returns the string stored in the variable" do
      mini_board = board.display_board
      expect(mini_board).to be_a(String)
    end
  end
  describe "#empty_cells" do
    it "shows an array with the keys representing the free positions" do
      mini_board = board.empty_cells
      expect(mini_board).to be_a(Array)
    end
  end
  describe "#update_board" do
    it "sets an 'X' or a 'O' in a board position given depending if the round is even or not" do
      position 
      move = board[position]
      expect(move).to eql('X')
    end
  end
  describe "#validate_position" do

  end
  describe "#winner_checking" do
    
  end
end
