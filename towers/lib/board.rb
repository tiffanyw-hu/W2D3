require 'byebug'

class Board
  attr_accessor :rows

  def initialize
    @rows = Array.new(3) {Array.new}
    Board.make_rows(@rows) #make rows with numbers
  end
  #
  def self.make_rows(rows)
    # debugger
    el_num = rows.length
    until el_num == 0
      rows[0] << el_num
      el_num -= 1
    end
    return rows
  end

  def update_rows(from_pos, to_pos)
    rows[to_pos] << rows[from_pos].pop
  end

  # def values
  #   @rows
  # end

end
