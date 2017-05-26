require_relative 'game'

describe Game do
  let(:game) {Game.new}

 # it "adds two integers" do
    #expect(game.add(3,4)).to eq 7
  #end

  it "provides feedback on word with _'s" do
    expect(game.get_blankword("leah", "a")).to eq "  _  _ a _ "
  end
end