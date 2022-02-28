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

  # def speak(animal)
  #   if animal.type = "dog"
  #     "Woof Woof"
  #   elsif animal.type = "spider"
  #     "..."
  #   end
  # end

  # implementing abstraction
  def speak
    if @type == "dog"
      "Woof Woof"
    elsif @type == "spider"
      "..."
    end
  end

  def bring_a_stick
    if @type == "dog"
      "Here is your stick ------------"
    end
  end

  def make_a_web
    if @type == "spider"
      "www"
    end
  end
end

animal_1 = Animal.new("dog", 4, "Rex")
p animal_1.id
p animal_1.type
p animal_1.name
p animal_1.number_of_legs

animal_2 = Animal.new("cat", 8)
p animal_2.name
animal_2.name = "Fluffy"
p animal_2.name

animal_3 = Animal.new("dog", 4, "Rex")
animal_4 = Animal.new("spider", 8, "Wilma")

animal_3.speak()
animal_4.speak()

animal_dog = Animal.new("dog", 4, "Rex")
animal_spider = Animal.new("spider", 8, "Wilma")

animal_dog.bring_a_stick()
animal_spider.bring_a_stick()

animal_dog.make_a_web()
animal_spider.make_a_web()