
require_relative "../lib/human"
describe "#Human" do
  context "creating a new human instance" do
    it "creates a new instance of the Human object" do
      human = Human.new({})

      expect(human).to be_a(Human)
    end

    it "instantiates a default object with default values" do
      human = Human.new({})

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
  end
end
