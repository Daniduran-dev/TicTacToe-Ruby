require './lib/board'
describe Board do
  let(:board) { Board.new }
  describe "#display_board" do
    it "returns the string stored in the variable" do
        mini_board = board.display_board
    expect(mini_board).to be_a(String)
  end

  end
end
