require_relative 'game'

describe Game do
  let (:game) { Game.new("hey") }

  it "splits a string into an array" do
    expect(game.split_word). to eq 3
  end

  it "provides a new array with blanks" do
    expect(game.guessing). to eq ["_", "_", "_"]
  end

  it "replaces _ with correctly guessed letter" do
    expect(game.check_word("h")). to eq ["h", "_", "_"]
  end

end