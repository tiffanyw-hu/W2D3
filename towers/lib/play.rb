require_relative 'board.rb'
require 'byebug'


class Play
  attr_reader :rows
  def initialize
    @rows = Board.new
  end

  def move
    begin
      # debugger
      print "From"
      from_pos = gets.chomp.to_i
      print "To"
      to_pos = gets.chomp.to_i
      if valid_move?(from_pos, to_pos) == false
        raise
      end
    rescue
      print "invalid move. try again"
      retry
    end

  end

  def won?
    @rows.rows.each_index do |idx|
      if idx == 0
        next
      elsif @rows.rows[idx] == [3, 2, 1]
        return true
      end
    end
    false
  end

  def render
  end

  def valid_move?(from_pos, to_pos)
    # false


    if !from_pos.between?(0, 2) || !(to_pos.between?(0, 2))
      return false
    elsif (@rows.rows[to_pos].last == nil)
      return true
    elsif @rows.rows[from_pos].last < @rows.rows[to_pos].last
      return false
    end
    true
  end


end
