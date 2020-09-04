# !/usr/bin/env ruby
require_relative '../lib/board.rb'

system 'clear'
puts 'Welcome to Tic Tac Toe'
puts ' '
# rubocop: disable Metrics/BlockLength
loop do
  puts 'Would you like to start a new game?(y/n)'
  start_game = gets.chomp.to_s.downcase
  puts ' '
  system 'clear'
  if start_game == 'y'
    puts 'Here we go!!'
    puts ' '
    puts 'Starting new game'
    puts ' '
    print 'Player 1 introduce your name: '
    player1 = gets.chomp.upcase
    puts ' '
    print 'Player 2 introduce your name: '
    player2 = gets.chomp.upcase
    round = 0
    board = Board.new
    loop do
      loop do
        system 'clear'
        puts "#{player1} plays with X    #{player2} plays with O"
        puts ' '
        puts round.even? ? "#{player1} it's your turn" : "#{player2} it's your turn"
        puts ' '
        board.display_board
        puts ' '
        print 'Choose an available cell: '
        board.empty_cells
        puts ' '
        position = gets.chomp.to_sym
        break if (board.update_board(position, round) if board.validate_position(position))
      end
      unless board.winner_checking.empty?
        system 'clear'
        puts "#{player1} plays with X    #{player2} plays with O"
        puts ' '
        puts round.even? ? "The winner is #{player1}" : "The winner is #{player2}"
        puts ' '
        board.display_board
        puts ' '
        puts "The winning combination is: #{board.winner_checking.keys}"
        puts ' '
        break
      end
      round += 1
      system 'clear'
      puts "It's a draw!!" if round == 9
      puts ' '
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
