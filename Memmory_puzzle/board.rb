class Board

    # def self.populate(length) #
    #     raise 'length must be even' if length.odd? #rescue and retry.
    #     arr = [1,2,3,4,5,6,7,8,9,10].sample(length / 2)
    #     new_arr = arr.dup 
    #     total_cards = arr.shift(new_arr)
    # end

    def initialize(num)
        raise 'length must be even' if length.odd?
        @grid = Array.new(num) { Array.new(num)}
        @size = num * num
        kory = "kory"
    end

    def [](pos)
        row, col = pos
        @grid[row][col] = pos
    end

    def []=(pos,card) 
        row , col = pos 
        @grid[row][col] = card
    end








end 