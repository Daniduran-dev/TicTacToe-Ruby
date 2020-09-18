require_relative '../lib/players.rb'

describe Players do
  let(:players) { Players.new('Dani', 'Duran') }

  describe '#designation' do
    it 'returns a string with the names of the players and their marks' do
      expect(players.designation).to eql('Dani plays with X    Duran plays with O')
      expect(players.designation).not_to eql(' plays with X     plays with O')
    end
  end

  describe '#turn' do
    it 'returns one of the 2 sentences depending on the round number' do
      expect(players.turn(0)).to eql "Dani it's your turn"
      expect(players.turn(0)).not_to eql "Duran it's your turn"
    end
  end

  describe '#winner' do
    it 'returns one of the 2 winner sentences depending on the round number' do
      expect(players.winner(0)).to eql 'The winner is Dani'
      expect(players.winner(0)).not_to eql 'The winner is Duran'
    end
  end
end
