require_relative "board"
require_relative "queen"

class View

  # def introduction
  #   puts "Welcome to Chess Battle Royal"
  # end

  def get_user_type
    #Collect Information to Initialize Chess Piece Model
    puts "Welcome to Chess Battle Royal"
    puts "What piece would you like to battle with?:"
    puts "Queen"
    puts "King"
    puts "Bishop"
    puts "Rook"
    puts "Knight"
    #Puts text in lowercase so as long as it's spelled right.
    warrior = gets.chomp

    #If Warrior does not equal the above choices
    if warrior.downcase == "queen" || warrior.downcase == "king" || warrior.downcase == "bishop" || warrior.downcase == "rook" || warrior.downcase == "knight"
    #Warrior set as Selection
      puts "You've chosen to battle with A #{warrior.capitalize}"
    else
      puts "If you do not choose one of the above choices Queen will be chosen for you."
      puts "Please choose a chess piece."
      warrior = gets.chomp
      if warrior.downcase == "queen" || warrior.downcase == "king" || warrior.downcase == "bishop" || warrior.downcase == "rook" || warrior.downcase == "knight"
        puts "You've chosen to battle with a #{warrior.capitalize}"
      else
        #warrior set as queen
        puts "Your warrior has been set to a Queen"
        warrior = "queen"
      end
    end
    return warrior
  end

  def get_user_row
    #Collect Row
    puts "Now on an 8x8 board numbered 0-7 by rows and columns where would you like to place your piece?"
    row = gets.chomp.to_i
    if row >= 0 && row <= 7
      #Row kept as selection
      puts "You've chosen #{row}"
    else
      puts "Please choose a number between 0 and 7 or 3 will be chosen for you"
      row = gets.chomp.to_i
      if row >= 0 && row <= 7
        #Row kept as selection
        puts "You've chosen #{row}"
      else
        row = 3
        "Your row will be #{row}"
      end
    end
    return row
  end

  def get_user_column
    #Collect Column
    puts "What column would you like to place your Chess Piece? (0-7)"
    column = gets.chomp.to_i
    if column >= 0 && column <= 7
      #column kept as selection
      puts "You've chosen #{column}"
    else
      puts "Please choose a number between 0 and 7 or 5 will be chosen for you"
      column = gets.chomp.to_i
      if column >= 0 && column <= 7
        #column kept as selection
        puts "You've chosen #{column}"
      else
        column = 5
        "Your column will be #{column}"
      end
    end
    return column
  end

  def introduce_board
    puts "Based on your warrior type, row, and column"
    puts "You have been placed here on the battlefield!"
  end

  def get_cpu_type
    # Collect type 2
    puts "Now that we can see your piece on the board, let's find a competitor."
    puts "Queen"
    puts "King"
    puts "Bishop"
    puts "Rook"
    puts "Knight"
    #Puts text in lowercase so as long as it's spelled right.
    warrior = gets.chomp
    #If Warrior does not equal the above choices
    if warrior.downcase == "queen" || warrior.downcase == "king" || warrior.downcase == "bishop" || warrior.downcase == "rook" || warrior.downcase == "knight"
      #Warrior set as Selection
      puts "You've chosen to battle with a #{warrior.capitalize}"
    else
      puts "If you do not choose one of the above choices Queen will be chosen for you."
      puts "Please choose a chess piece."
      warrior = gets.chomp.downcase!
      if warrior.downcase == "queen" || warrior.downcase == "king" || warrior.downcase == "bishop" || warrior.downcase == "rook" || warrior.downcase == "knight"
        puts "Your opponent will battle with a #{warrior.capitalize}"
      else
        #warrior set as queen
        puts "Your opponent's warrior has been set to a Queen"
        warrior = "queen"
      end
    end
    return warrior
  end

  def get_cpu_row
    #Collect Row2
    puts "On the same 8x8 board as we used previously, where would you like to place your competitor?"
    row = gets.chomp.to_i
    if row >= 0 && row <= 7
      #Row kept as selection
      puts "You've chosen #{row}"
    else
      puts "Please choose a number between 0 and 7 or 5 will be chosen for you"
      row = gets.chomp.to_i
      if row >= 0 && row <= 7
        #Row kept as selection
        puts "You've chosen #{row}"
      else
        row = 5
        "Your row will be #{row}"
      end
    end
    return row
  end

  def get_cpu_column
    #Collect Column
    puts "What column would you like to place your Chess Piece? (0-7)"
    column = gets.chomp.to_i
    if column >= 0 && column <= 7
      #column kept as selection
      puts "You've chosen #{column}"
    else
      puts "Please choose a number between 0 and 7 or 3 will be chosen for you"
      column = gets.chomp.to_i
      if column >= 0 && column <= 7
        #column kept as selection
        puts "You've chosen #{column}"
      else
        column = 3
        "Your column will be #{column}"
      end
    end
    return column
  end

    def show_opponent
    puts "Here is where you opponent will be placed on the battlefield!"
  end

  def show_user_attack_range
    puts "Here is where you can attack!"
    puts "Your location is where it was marked earlier"
    puts "Your attack radius will be marked by an asterisk (*)"
  end

  def show_cpu_attack_range
    puts "Here is where your opponent can attack!"
    puts "Your opponent location is also where it was marked earlier."
    puts "You opponent's attack radius will also be marked by an asterisk (*)"
  end

  def show_full_board
    puts "Here's what the board looks like with both of you attacking simultaneously."
    puts "Locationed marked with a double asterisk (**)"
    puts "are within you and your opponents range of attack"
    puts "If you or your opponent's name are marked with an asterisk"
    puts "You have or they have been hit!!!"
  end

  def winner
    puts "It looks like you were able to attack your opponent!"
    puts "And your opponent was not able to attack you!!!"
    puts "You win!!!!!"
  end

  def loser
    puts "It looks like your opponent was able to attack you!"
    puts "It looks like you were not able to attack your opponent!!!"
    puts "You Lose!!!!!"
  end

  def draw
    puts "It looks like you were able to attack your opponent!"
    puts "It looks like your opponent was able to attack you!"
    puts "Draw..."
  end

  def misfire
    puts "It looks like no one was able to attack"
    puts "Draw..."
  end

  # def play_again?
  #   puts "That was fun!"
  #   puts "Would you like to play again?"
  #   input = gets.chomp.downcase!
  #   if input = "y" || input = "yes"
  #     true
  #   else
  #     false
  #   end
  # end

end
