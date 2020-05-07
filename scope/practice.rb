#Global Scope

dog = "Nile"
cat = "Ari"

def say_hello(name)
  # Method scope
  "Hello #{name}"
end

def shout_animals
  some_animal = nil
  animals = ["dog", "cat", "zebra"]
  animals.each do |animal|
    cat = "Bonnie"
    puts animal.upcase
    some_animal = animal
    puts animals.inspect
  end
  puts some_animal
end

shout_animals
