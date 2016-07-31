class Wordgame

  #Initialize new game
    #Input: word/phrase that needs to be guessed by user
    #Possible letters user can guess = all letters in alphabet
    #Number of guesses allowed = word length + 3 (cuz I'm nice)

  attr_reader :answer, :guesses_remaining,:letters_to_guess

  def initialize(word)
    @answer = word
    @letters_to_guess =  ["a", "b", "c", "d", "e", "f", "g", "h",   "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",   "u", "v", "w", "x", "y", "z"]
    @guesses_remaining = word.length + 3
  end

  #Show user their progress by printing the word based on their   current guesses.  All letters not guessed yet will be replaced   by "_" marks
  def progress
    @answer.tr(@letters_to_guess.join, "_")
  end

  #Update progress once user guesses a letter
    #IF letter hasn't been guessed on a prior turn, reduce   remaining guesses by 1 and display new progress
    #ELSE ask the user to guess another letter (no deduction from   guesses remaining)
  def guess(letter)
    if @letters_to_guess.include?(letter)
      @guesses_remaining -= 1
      @letters_to_guess.delete(letter)
    else
      puts "Oops! Looks like you already tried that letter.  Guess   again!"
    end
    puts "You have #{@guesses_remaining} guesses left"
    progress
  end

  #IF the game is won, print congratulatory message
  #ELSE game is lost, print taunting message

  def game_won
    "Great job!!  Those big, beautiful brains of yours just won the game!"
  end

  def game_lost
    "Did you eat a lot of paint chips as a kid?  Better luck next time..."
  end

end

# Driver Code

puts "Welcome to Cruelty-Free Hangman! \n(All the joy of regular Hangman without the sadistic hanging of an innocent man)"

puts "\nWhat word or phrase would you like the player to guess?"
word = gets.chomp.downcase

puts "\n"*100

new_game = Wordgame.new(word)

puts "Great!  I've got your answer safely stored away."
puts "\nWelcome new player!  \nAre you ready to impress with your awesome word-guessing skills?  \nYou have #{new_game.guesses_remaining} guesses to figure out this word or phrase:"

puts new_game.progress

puts "\nGuess a letter when you're ready to begin"

until new_game.guesses_remaining == 0
  letter = gets.chomp.downcase
  puts new_game.guess(letter)
  break if !new_game.progress.include?("_")
end

if new_game.progress.include?("_")
  puts new_game.game_lost
else
  puts new_game.game_won
end