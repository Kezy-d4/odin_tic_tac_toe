require "colorize"
require_relative "../lib/board"

describe Board do
  subject(:board) { described_class.new }

  describe "#evaluate_win_conditions" do
    context "when a top row of Crosses is the winning line" do
      before do
        board.spot1 = "X"
        board.spot2 = "X"
        board.spot3 = "X"
      end

      it "returns the winning line" do
        expect(board.evaluate_win_conditions("X")).to eq(board.row1)
      end
    end

    context "when a middle column of Noughts is the winning line" do
      before do
        board.spot2 = "O"
        board.spot5 = "O"
        board.spot8 = "O"
        board.spot1 = "X"
      end

      it "returns the winning line" do
        expect(board.evaluate_win_conditions("O")).to eq(board.column_b)
      end
    end

    context "when there are no winning lines" do
      it "returns nil" do
        expect(board.evaluate_win_conditions("X")).to be_nil
      end
    end
  end

  describe "#render_square" do
    it "prints to console the given spot surrounded by square brackets" do
      expect { board.render_square(board.spot5) }.to output("[5]").to_stdout
    end
  end
end
