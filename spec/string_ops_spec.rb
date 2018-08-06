require 'spec_helper'
context "mock response" do
  it "mocks the response from to_upper" do
    mocked_response = "This is a mocked to_upper response."
    mocked_string_ops = double("mocked_string_ops")
    allow(mocked_string_ops).to receive(:to_upper).and_return(mocked_response)
    expect(mocked_string_ops.to_upper("any string")).to eq(mocked_response)
  end
end
describe StringOps do
  string_ops = StringOps.new
  input_string = "To see a World in a Grain of Sand, And a Heaven in a Wild Flower, Hold Infinity in the palm of your hand, And Eternity in an hour."

  describe "#to_upper" do
    it "returns upper case for input_string" do
      expected_string = "TO SEE A WORLD IN A GRAIN OF SAND, AND A HEAVEN IN A WILD FLOWER, HOLD INFINITY IN THE PALM OF YOUR HAND, AND ETERNITY IN AN HOUR."
      expect(string_ops.to_upper(input_string)).to eq(expected_string)
    end
  end

  describe "#to_lower" do
    it "returns lower case for input_string" do
      expected_string = "to see a world in a grain of sand, and a heaven in a wild flower, hold infinity in the palm of your hand, and eternity in an hour."
      expect(string_ops.to_lower(input_string)).to eq(expected_string)
    end
  end
end
