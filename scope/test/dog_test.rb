require 'minitest/autorun'
require 'minitest/pride'
require './lib/toy'
require './lib/dog'
require 'pry'

class DogTest < Minitest::Test
  def test_it_exists
    dog = Dog.new('Nile', 2)

    binding.pry

    assert_instance_of Dog, dog
  end

  def test_it_has_attributes
    dog = Dog.new('Nile', 2)

    assert_equal 'Nile', dog.name
    assert_equal 2, dog.age
    assert_equal [], dog.toys
  end

  def test_it_can_add_toys
    toy1 = Toy.new('Kong')
    toy2 = Toy.new('Rope Pull')
    toy3 = Toy.new('Squirrell Plushie')
    dog = Dog.new('Nile', 2)

    dog.add_toy(toy1)
    dog.add_toy(toy2)
    dog.add_toy(toy3)

    assert_equal [toy1, toy2, toy3], dog.toys
  end

  def test_it_can_list_toy_names
    toy1 = Toy.new('Kong')
    toy2 = Toy.new('Rope Pull')
    toy3 = Toy.new('Squirrel Plushie')
    dog = Dog.new('Nile', 2)

    dog.add_toy(toy1)
    dog.add_toy(toy2)
    dog.add_toy(toy3)

    assert_equal ['Kong', 'Rope Pull', 'Squirrel Plushie'], dog.toy_names
    dog.shout_toy_names
  end
end
