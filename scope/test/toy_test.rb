require 'minitest/autorun'
require 'minitest/pride'
require './lib/toy.rb'

class ToyTest < Minitest::Test
  def test_it_exists
    toy = Toy.new("Kong")

    assert_instance_of Toy, toy
  end

  def test_it_has_a_name
    toy = Toy.new("Kong")

    assert_equal "Kong", toy.name
  end
end
