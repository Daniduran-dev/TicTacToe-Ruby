require './lib/players'
describe Players do
  let(:players) { Players.new('Dani', 'Duran') }
  describe '#designation' do
    expect(players.designation).to eql('Dani plays with X    Duran plays with O')
  end
  describe "#turn" do
    players.turn(0)
    it "returns one of the 2 sentences depending on the round number" do
      expect
    end
  end
end