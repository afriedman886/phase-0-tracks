class Wordgame

#initialize new game with answer = word/phrase in argument
#possible letters to guess = all letters in alphabet
#number of guesses allowed = word length + 3 (cuz I'm nice)

attr_reader :answer, :guesses_remaining, :letters_to_guess

def initialize(word)
  @answer = word
  @letters_to_guess =  ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  @guesses_remaining = word.length + 3
end

def progress
  @answer.tr(@letters_to_guess.join, "_")
end




#create guess string that starts as empty dashes, but will fill in with correct letters as user makes guesses
#print updated string after each guess is made

#track guesses of user, number of guesses dependent on length of the answer word/phrase
#repeat guesses do not count against user

#IF the game is won, print congratulatory message
#ELSE game is lost, print taunting message


end