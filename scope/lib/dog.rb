cat = "Ari"
class Dog
  attr_reader :name,
              :age,
              :toys


  def initialize(name_parameter, age_parameter)
    #method scope - local variables, instance variables
    @name = name_parameter
    @age = age_parameter
    @toys = []
  end

  def add_toy(toy)
    @toys << toy
  end

  def toy_names
    names = []
    @toys.each do |toy|
      names << toy.name
    end
    names
  end

  def say_hello
    "Bark, I'm #{@name}"
  end

  def shout_toy_names
    friend = "Pongo"
    toy_names.each do |toy_name|
      puts toy_name.upcase
    end
  end
end
