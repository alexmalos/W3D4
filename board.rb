require_relative "tile"

class Board
    def initialize
        @grid = Array.new(9) { Array.new(9) { Tile.new(self) } }
    end

    attr_reader :grid

    def [](pos)
        row, col = pos
        @grid[row][col]
    end


end