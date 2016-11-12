require_relative 'game'

describe GuessGame do
	let(:game) {GuessGame.new}

it "stores the answer given" do
    expect(game.get_answer("test")).to eq "test"
  end

it "splits answer into array" do
		expect(game.guesses_total("test")).to eq 4
  end

it "scrambles into blanks" do
		expect(game.guess_scramble("test", "_")).to eq "____"
  end

it "scrambles into blanks, except for correct guesses" do
		expect(game.guess_scramble("test", "ts")).to eq "t_st"
  end
end