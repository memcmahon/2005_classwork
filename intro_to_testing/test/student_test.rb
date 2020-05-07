require 'minitest/autorun' #must require this
require 'minitest/pride'
require './lib/student'
require 'pry'

class StudentTest < Minitest::Test
  def setup
    @student = Student.new('Penelope')
  end

  def test_it_exits
    skip
    assert_instance_of Student, @student
  end

  def test_it_has_a_name
    skip
    assert_equal 'Penelope', @student.name
  end

  def test_it_starts_with_no_cookies
    skip
    assert_equal [], @student.cookies
  end

  def test_it_starts_hungry
    skip

    student  = Student.new('Megan')
    assert_equal true, student.hungry?
    # assert student.hungry?
  end

  def test_it_can_add_cookies
    skip
    @student.add_cookie('Chocolate Chunk')
    @student.add_cookie('Snickerdoodle')

    assert_equal ["Chocolate Chunk", "Snickerdoodle"], @student.cookies
  end

  def test_student_cant_be_created_with_integer_name
    skip
    student = Student.new(13)
    assert_equal "Name not Provided", student.name
  end
end
