module TicTacToe

  # keeps track of a cell's value and initialize default value
  class Cell
    attr_accessor :value

    def initialize(value = "")
      @value = value
    end
  end

  # will track a player's name and if they are an X or O
  class Player
    attr_reader :color, :name

    def initialize(input)
      @color = input.fetch(:color)
      @name = input.fetch(:name)
    end
  end

  class Board
    attr_reader :grid

    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    # ask for value for specific Cell
    def get_cell(x,y)
      grid[x][y]
    end

    # method that will update the value of Cell
    def set_cell(x,y,value)
      get_cell(x,y).value = value
    end

    def game_over
      return :winner if winner?
      return :draw if draw?
      false
    end

    def formatted_grid
      grid.each do |row|
        puts row.map {|cell| cell.value.empty? ? "_" : cell.value}.join(" ")
      end
    end

    private

    # it fills board with empty Cells
    def default_grid
      Array.new(3) {Array.new(3) {Cell.new}}
    end

    def draw?
      grid.flatten.map {|cell| cell.value}.none_empty?
    end

    def winning_positions
      grid + # rows
      grid.transpose + #columns
      diagonals
    end

    def diagonals
      [
        [get_cell(0,0), get_cell(1,1), get_cell(2,2)],
        [get_cell(0,2), get_cell(1,1), get_cell(2,0)]
      ]
    end

    def winner?
      winning_positions.each do |winning_position|
        next if winning_position_values(winning_position).all_empty?
        return true if winning_position_values(winning_position)
      end
      false
    end

    def winning_position_values(winning_position)
      winning_position.map {|cell| cell.value}
    end
  end

  class Game
    attr_reader :players, :board, :current_player, :other_player

    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = players.shuffle
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def solicit_move
      "#{current_player.name}: Enter a number between 1 and 9"
    end

    def get_move(human_move = gets.chomp)
      human_move_to_coordinate(human_move)
    end

    def game_over_message
      return "#{current_player.name} won!" if board.game_over == :winner
      return "The game ended in a tie" if board.game_over == :draw
    end

    def play
      puts "#{current_player.name} has randomly been selected as the first player"
      while true
        board.formatted_grid
        puts ""
        puts solicit_move
        x, y = get_move
        board.set_cell(x,y, current_player.color)
        if board.game_over
          puts game_over_message
          board.formatted_grid
          return
        else
          switch_players
        end
      end
    end

    private

    def human_move_to_coordinate(human_move)
      mapping = {
        "1" => [0,0],
        "2" => [1,0],
        "3" => [2,0],
        "4" => [0,1],
        "5" => [1,1],
        "6" => [2,1],
        "7" => [0,2],
        "8" => [1,2],
        "9" => [2,2]
      }
      mapping[human_move]
    end

  end
end

class Array
  # methods for checking board
  def all_empty?
    self.all? {|element| element.to_s.empty?}
  end

  def all_same?
    self.all? {|element| element == self[0]}
  end

  def any_empty?
    self.any? {|element| element.to_s.empty?}
  end

  def none_empty?
    !any_empty?
  end
end

puts "Welcome to tic tac toe"
bob = TicTacToe::Player.new({color: "X", name: "bob"})
frank = TicTacToe::Player.new({color: "O", name: "frank"})
players = [bob, frank]
TicTacToe::Game.new(players).play
