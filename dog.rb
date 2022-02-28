require "./animal.rb"

class Dog < Animal
  def initialize(color, name = "Unknown") 
    super("dog", 4, name)
    @color = color
  end

  def speak
    "Woof, woof"
  end

  def bring_a_stick
    "Here is your: ----------"
  end
end