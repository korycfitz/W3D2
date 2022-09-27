class Board
    # require "byebug"
    def self.print_grid(grid)
        grid.each do |row|
            puts row.join(" ")
        end
    end

    def initialize(num)
        raise 'length must be even' if num.odd?
        @grid = Array.new(num) { Array.new(num)}
        @size = num * num
    end

    def [](pos)
        row = pos[0]
        col = pos[1]
        @grid[row][col]
    end

    def []=(pos, card) 
        row = pos[0]
        col = pos[1]
        @grid[row][col] = card 
    end

    def populate
        total_pairs = @size * (0.5)
        values = (1..total_pairs).to_a
        dup_values = values.dup
        pair_of_num = values.push(dup_values).flatten

        i = 0 
        while @grid.flatten.count(nil) > 0 
            row = rand(0...@grid.length)
            col = rand(0...@grid.length)
            if @grid[row][col] == nil
                @grid[row][col] = pair_of_num[i]
                i += 1
            else
                @grid[row][col] = @grid[row][col]
                i = i
            end
        end
    end

    def hidden_board_grid
        @grid.map do |row|
            row.map do |ele| 
                if ele.instance_of? Integer
                    ele = nil
                else
                    ele
                end
            end
        end
    end

    def render
        Board.print_grid(self.hidden_board_grid)
    end

end 