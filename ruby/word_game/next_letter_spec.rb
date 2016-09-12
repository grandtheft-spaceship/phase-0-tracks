require_relative "next_letter"

describe NextLetter do
  let(:game) { NextLetter.new }
  let(:board) { NextLetter.new.setup_board("dog")}

  it "accepts mystery word and splits letters into an array" do
    expect(game.split("dog")).to eq ["d", "o", "g"]
  end

  it "will setup the board with the correct number of slots" do
    expect(game.setup_board("dog")).to eq ["_","_","_"]
  end

  it "will display the current state of the board" do
    expect(board.display_board).to eq ["_","_","_"]
  end

  it "will verify the user's guess against the board" do
    expect(board.verify_guess("d")).to eq ["d","_","_"]
  end

end

