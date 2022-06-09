require_relative "board"

class Tile
    def initialize(board)
        @bombed = false
        @flagged = false
        @revealed = false
        @grid = board
    end

    attr_reader :bombed, :flagged, :revealed

    def reveal
        @revealed = true
    end

    def flag
        @flagged = true
    end

    def bomb
        @bombed = true
    end

    def neighbors
        @grid.each_with_index do |row, row_idx|
            row.each_with_index do |tile, col_idx|
                self_idx = [row_idx, col_idx] if tile.object_id == self.object_id
            end
        end
        self_idx
    end

    def neighbor_bomb_count

    end
end