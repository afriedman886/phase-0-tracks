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

  it "prints answer with all letters replaced by _ marks" do
    expect(newgame.progress).to eq "________"
  end

end