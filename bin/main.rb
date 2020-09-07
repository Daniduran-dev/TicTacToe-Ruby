# !/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/players.rb'

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
    players = Players.new(player1, player2)
    board = Board.new
    loop do
      loop do
        system 'clear'
        puts players.designation
        puts ' '
        puts players.turn(round)
        puts ' '
        puts board.display_board
        puts ' '
        print 'Choose an available cell: '
        print board.empty_cells
        puts ' '
        position = gets.chomp.to_sym
        unless board.validate_position(position)
          puts ' '
          puts 'Wrong coordenate!!'
          puts ' '
          puts 'Press any button to try again.'
          press_button = gets
          press_button
        end
        break if (board.update_board(position, round) if board.validate_position(position))
      end
      unless board.winner_checking.empty?
        system 'clear'
        puts puts players.designation
        puts ' '
        puts players.winner(round)
        puts ' '
        puts board.display_board
        puts ' '
        break
      end
      round += 1
      system 'clear'
      puts ' '
      return puts "It's a draw!!" if round == 9
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
