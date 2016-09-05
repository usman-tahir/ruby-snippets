
class Human
  attr_accessor :name, :age, :gender

  def initialize(info)
    @name = info[:name] || ""
    @age = info[:age] || 0
    @gender = info[:gender] || ""
  end

  def to_s
    "#{@name} is a(n) #{@age} year old #{@gender}"
  end
end
