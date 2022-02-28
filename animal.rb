class Animal
  def initialize(number_of_legs, type, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
  end

  def id
    @id
  end

  def type
    @type
  end

  def number_of_legs
    @number_of_legs
  end

  def name
    @name
  end

  # def name=(value)
  #   @name = value
  # end

  # def speak()
  #   puts "Muaahhh, animal speaks :)"
  # end

  # Use instead of creating a function.
  # attr_reader :name
  # attr_writer :name

  # Allows for reading and writing
  attr_accessor :name

end

# animal_1 = Animal.new(4, "Rex")
# animal_2 = Animal.new(8)

# animal_1.speak
# animal_2.speak

animal_1 = Animal.new("dog", 4, "Rex")
p animal_1.id
p animal_1.type
p animal_1.name
p animal_1.number_of_legs

animal_2 = Animal.new("cat", 8)
p animal_2.name
animal_2.name = "Fluffy"
p animal_2.name