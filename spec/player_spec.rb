require "colorize"
require_relative "../lib/player"

describe Player do
  subject(:player) { described_class.new }

  describe "#initialize" do
    it "increments the number of players" do
      expect { described_class.new }.to change { described_class.class_variable_get(:@@number_of_players) }.from(0).to(1)
    end
  end

  describe "#prompt_player_input" do
    before do
      allow($stdout).to receive(:puts) # to silence #puts statements in test output
    end

    context "when testing the return value" do
      it "returns integer 5 when player input is string '5'" do
        player_input = "5"
        allow(player).to receive(:gets).and_return(player_input)
        expect(player.prompt_player_input).to eq(5)
      end

      it "returns default integer 0 when player input can not be converted" do
        player_input = "foo"
        allow(player).to receive(:gets).and_return(player_input)
        expect(player.prompt_player_input).to eq(0)
      end
    end

    context "when testing that it updates the instance variable" do
      it "updates player input instance variable" do
        player_input = "5"
        allow(player).to receive(:gets).and_return(player_input)
        player.prompt_player_input
        expect(player.player_input).to eq(5)
      end
    end
  end

  describe "#valid_player_input?" do
    it "returns true when player input instance variable is an integer between 1 and 9" do
      player.player_input = 9
      expect(player.valid_player_input?).to be(true)
    end

    it "returns false when player input instance variable is not an integer between 1 and 9" do
      expect(player.valid_player_input?).to be(false)
    end
  end

  describe "#remove_selected_input" do
    context "when given argument is in valid input" do
      it "returns valid input array excluding removed element" do
        input = 1
        result = player.remove_selected_input(input)
        expect(result).not_to include(input)
      end
    end

    context "when given argument is not in valid input" do
      it "returns nil" do
        input = 0
        expect(player.remove_selected_input(input)).to be_nil
      end
    end
  end

  describe "#clear_player_input" do
    it "returns an empty string" do
      expect(player.clear_player_input).to eq("")
    end

    context "when player input instance variable is not an empty string" do
      it "updates it to an empty string" do
        player.player_input = 5
        expect { player.clear_player_input }.to change(player, :player_input).from(5).to("")
      end
    end
  end
end
