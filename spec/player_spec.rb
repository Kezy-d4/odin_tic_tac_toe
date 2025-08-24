require "colorize"
require_relative "../lib/player"

describe Player do
  describe "#initialize" do
    it "increments the number of players" do
      expect { described_class.new }.to change { described_class.class_variable_get(:@@number_of_players) }.from(0).to(1)
    end
  end
end
