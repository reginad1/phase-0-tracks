require_relative 'wordgame'

describe Wordgame do
  let (:game) { Wordgame.new("hey") }

it "provides a new array with blanks" do
    expect(game.user_clue). to eq ["_", "_", "_"]
  end

it "checks a letter from user two and updates array based on letter" do
    expect(game.letter_checker('h')). to eq ["h", "_", "_"]
  end

end
