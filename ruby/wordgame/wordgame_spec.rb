require_relative "wordgame"

describe Wordgame do
let(:newgame) { Wordgame.new("elephant") }

  it "initializes new game with answer entered as argument" do
    expect(newgame.answer).to eq "elephant"
  end

  it "initializes new game with remaining guesses = word.length +3" do
    expect(newgame.guesses_remaining).to eq 11
  end

  it "initializes new game with 'remaining letters to guess' equal to an array of the full alphabet" do
    expect(newgame.letters_to_guess).to eq ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  end

  it "prints user progress by showing answer word/phrase with all letters not yet guessed replaced by '_' marks" do
    expect(newgame.progress).to eq "________"
  end

  it "updates progress after user guesses a letter" do
    newgame.guess("e")
    expect(newgame.progress).to eq "e_e_____"
    expect(newgame.guesses_remaining).to eq 10
    expect(newgame.letters_to_guess).to eq ["a", "b", "c", "d",  "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  end

  it "prints congratulatory message when game is won" do
    expect(newgame.game_won).to eq "Great job!!  Those big, beautiful brains of yours just won the game!"
  end

  it "prints taunting message when game is lost" do
    expect(newgame.game_lost).to eq "Did you eat a lot of paint chips as a kid?  Better luck next time..."
  end

end


