# Tic Tac Toe computer/computer, player/computer

module TicTacToe
  lines = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]] # all possible lines on board

  class Game
    attr_reader :board, :current_player, :other_player

    def initialize(player_1_class, player_2_class)
      @board = Array.new(10) # we ignore index 0
      @players = [player_1_class.new(self, "X"), player_2_class.new(self, "O")]
      @current_player, @other_player = players.shuffle
      puts "#{current_player} goes first"
    end

    def play
      loop do
        place_player_marker(current_player)

        if player_has_won?(current_player)
          puts "#{current_player} wins!"
          print board
        elsif board_full?
          puts "It's a draw."
          print board
        end

        switch_players!
      end
    end

    def free_positions
      Set.new((1..9)).select {|position| @board[position].nil?}
    end

    def place_player_marker(player)
      position = player.select_position!
      puts "#{player} selects #{player.marker} position #{position}"
      @board[position] = player.marker
    end

    def player_won?(player)
      lines.any? do |line|
        line.all? {|position| @board[position] == player.marker}
      end
    end

    def board_full?
      free_positions.empty?
    end

    def switch_players!
      @current_player = other_player
    end

    def turn_num
      10 - free_positions.size
    end

    def print_board
      col_separator, row_separator = " | ","--+--+--"
      label_for_position = lambda{|position| @board[position] ? @board[position] : position}
      row_for_display = lambda{|row| row.map(&label_for_position).join(col_separator)}
      row_positions = [[1,2,3], [4,5,6], [7,8,9]]
      rows_for_display = row_positions.map(&row_for_display)
      puts rows_for_display.join("\n" + row_separator + "\n")
    end
  end

  class Player
    attr_reader :marker

    def initialize(game, marker)
      @game = game
      @marker = marker
  end
end
