
require_relative "../lib/human"
describe "#Human" do
  context "creating a new human instance" do
    it "creates a new instance of the Human object" do
      info = {}
      human = Human.new(info)

      expect(human).to be_a(Human)
    end

    it "instantiates a default object with default values" do
      info = {}
      human = Human.new(info)

      expect(human.name).to eq ""
      expect(human.age).to eq 0
      expect(human.gender).to eq ""
    end

    it "instantiates a parameterized object with the given parameters" do
      info = {
        name: "John Doe",
        age: 18,
        gender: "male"
      }
      human = Human.new(info)

      expect(human.name).to eq "John Doe"
      expect(human.age).to eq 18
      expect(human.gender).to eq "male"
    end

    it "uses the available information from the passed-in parameters" do
      info = {
        name: "John Doe"
      }
      human = Human.new(info)

      # Uses default values for the other fields
      expect(human.name).to eq "John Doe"
      expect(human.age).to eq 0
      expect(human.gender).to eq ""
    end
  end
end

describe "#to_s" do
  it "returns a string representation of the Human object" do
    info = {
      name: "John Doe",
      age: 18,
      gender: "male"
    }
    human = Human.new(info)
    expected = "John Doe is a(n) 18 year old male"

    expect(human.to_s).to eq expected
  end
end
