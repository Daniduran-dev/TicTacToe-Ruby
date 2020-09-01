# !/usr/bin/env ruby

system 'clear'
puts 'Welcome to Tic Tac Toe'
# rubocop: disable Metrics/BlockLength
loop do
  puts 'Would you like to start a new game?(y/n)'
  start_game = gets.chomp.to_s.downcase
  puts ' '
  system 'clear'
  if start_game == 'y'
    puts 'Here we go!!'
    puts ' '
    puts 'Starting new game' # create a new game
    puts ' '
    print 'Player 1 introduce your name: '
    player1 = gets.chomp.upcase
    puts ' '
    print 'Player 2 introduce your name: '
    player2 = gets.chomp.upcase
    puts ' '
    puts "#{player1} plays with X    #{player2} plays with O" # create players
    round = 0
    loop do
      if round.even?
        puts "#{player1} it's your turn"
      else
        puts "#{player2} it's your turn"
      end
      puts ' '
      puts 'Here the board is displayed'
      puts ' '
      puts 'Choose an available cell:'
      puts 'here the available coordinates are displayed'
      position = gets.chomp
      puts "you have chosen #{position}"
      puts 'checking if there is a winner' # break if theres a winner
      round += 1
      puts "It's a draw!!" if round == 9
      break if round == 9
    end
  elsif start_game == 'n'
    system 'clear'
    puts 'Goodbye!! Come back soon!!'
    puts ' '
    break
  else
    system 'clear'
    puts 'Please introduce (y) for YES or (n) for NO'
    puts ' '
  end
end
# rubocop: enable Metrics/BlockLength
