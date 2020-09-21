require_relative '../lib/players.rb'

describe Players do
  let(:players) { Players.new('Dani', 'Duran') }
  let(:player1) { 'Dani' }
  let(:player2) { 'Duran' }
  describe '#initialize' do
    it 'checks if the names have at least 1 charachter' do
      expect(player1.size).to be >= 1
      expect(player2.size).to be >= 1
    end
    it 'checks if the names of the players are different' do
      expect(player1).not_to eql player2
    end
  end
  describe '#designation' do
    it 'returns a string with the names of the players and their marks' do
      expect(players.designation).to eql('Dani plays with X    Duran plays with O')
    end
    it 'checks if the player names are not showing' do
      expect(players.designation).not_to eql(' plays with X     plays with O')
    end
  end

  describe '#turn' do
    it 'returns one of the 2 sentences depending on the round number' do
      expect(players.turn(0)).to eql "Dani it's your turn"
    end
    it 'checks that takes the right player' do
      expect(players.turn(0)).not_to eql "Duran it's your turn"
    end
  end

  describe '#winner' do
    it 'returns one of the 2 winner sentences depending on the round number' do
      expect(players.winner(0)).to eql 'The winner is Dani'
    end
    it 'checks that takes the right player' do
      expect(players.winner(0)).not_to eql 'The winner is Duran'
    end
  end
end
