require './lib/board'
describe Board do
  let(:board) { Board.new }
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

end
