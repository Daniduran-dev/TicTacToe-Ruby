class Players
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def designation
    plays_with = "#{player1} plays with X    #{player2} plays with O"
    plays_with
  end

  def turn
    round.even? ? "#{player1} it's your turn" : "#{player2} it's your turn"
  end
end
