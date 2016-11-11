require_relative 'game'

describe GuessGame do
	let(:game) {GuessGame.new}

it "stores the answer given" do
    expect(game.get_answer("test")).to eq "test"
  end

it "splits answer into array" do
		expect(game.answer_setup("test")).to eq 4
  end

it "scrambles into blanks" do
		expect(game.guess_scramble(["t", "e", "s", "t"])).to eq "____"
  end
end