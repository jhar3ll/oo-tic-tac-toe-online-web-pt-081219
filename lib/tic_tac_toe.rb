require 'pry'

class TicTacToe
  
  def initialize
    @board = Array.new(9, " ")
  end 
  
    WIN_COMBINATIONS = [
    [0,1,2], 
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  
  def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(string)
    string.to_i - 1
  end 
  
  def move(index, token="X")
    @board[index] = token
  end
  
  def position_taken?(index)
    if @board[index] != " "
      return true  
    else
      return false
      puts "the position is taken!"
    end 
  end 
  
  def valid_move?(index)
    if @board[index] == (0...8) 
      return true 
    elsif @board[index] == " "
      return true 
    else 
      return false 
    end 
  end 
  
  def turn
    puts "Please type a number between 0-10 that is not already taken."
    @user_input = gets.strip
    
    input_to_index(@user_input)
    
  end 
  
  def turn_count
    @board.count { |n| n == "X" || n == "O"}
  end 
  
  def current_player
    if @board.count("X") == @board.count("O")
      return "X"
    else 
      return "O"
    end
  end
  
  def won?
    if @board[WIN_COMBINATIONS] == "X"
     return @board[WIN_COMBINATIONS] == "X"
    elsif @board[WIN_COMBINATIONS] == "O"
     return @board[WIN_COMBINATIONS] == "O"
    else 
      false
    end
  end
      
  
    
    
      
  
  
  
  
  
  
  
  
  
  
  
end 