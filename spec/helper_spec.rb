require_relative "../lib/helper"

describe Helper do
  let(:dummy_class) { Class.new { extend Helper } }

  describe "#flip_a_coin" do
    it "returns true or false" do
      expect(dummy_class.flip_a_coin).to be(true).or be(false)
    end
  end
end
