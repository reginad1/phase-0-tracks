require_relative 'wordgame'

describe WordGame do
  let (:game) { WordGame.new("hey") }

it "provides a new array with blanks per letter in word" do
    expect(game.user_clue). to eq ["_", "_", "_"]
  end

it "checks a letter from user two and updates array based on letter" do
    expect(game.letter_checker("h")). to eq ["h"]
  end

end
