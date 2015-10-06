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

    def initialize(input)
      @grid = input.fetch(:grid)
    end

    private

    # it fills board with empty Cells
    def default_grid
      Array.new(3) {Array.new(3) {Cell.new}}
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
        next if winning_position_values (winning_position).all_empty?
        return true if winning_position_values(winning_position)
      end
      false
    end

    def winning_position_values(winning_position)
      winning_position.map {|cell| cell.value}
    end


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

  class Game
    attr_reader :players, :board, :current_player, :other_player

    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = players.shuffle
    end
  end
end
