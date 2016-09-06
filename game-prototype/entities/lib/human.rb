
class Human
  attr_reader :name, :age, :gender

  def initialize(info)
    @name = info[:name] || ""
    @age = info[:age] || 0
    @gender = info[:gender] || ""
  end

  # Set methods
  def set_name(name)
    @name = name
  end

  def set_age(age)
    @age = age
  end

  def set_gender(gender)
    @gender = gender
  end

  def to_s
    "#{@name} is a(n) #{@age} year old #{@gender}"
  end
end
