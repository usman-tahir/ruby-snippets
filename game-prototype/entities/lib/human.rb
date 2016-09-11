
class Human
  attr_reader :name, :age, :gender

  def initialize(info)
    @name = info[:name] || ""
    @age = info[:age] || 0
    @gender = info[:gender] || ""
  end

  # Set methods
  def set_name(name)
    if name.length == 0
      false
    else
      @name = name
      true
    end
  end

  def set_age(age)
    if age <= 0
      false
    else
      @age = age
      true
    end
  end

  def set_gender(gender)
    accepted = ["m", "f", "u"]
    if accepted.include?(gender)
      @gender = gender
      true
    else
      false
    end
  end

  def to_s
    "#{@name} is a(n) #{@age} year old #{@gender}"
  end
end
