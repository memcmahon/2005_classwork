require 'minitest/autorun' #must require this
require 'minitest/pride'
require './lib/student'

class StudentTest < Minitest::Test
  def test_it_exists
    student = Student.new('Penelope')

    assert_instance_of Student, student
  end

  def test_it_has_a_name
    student = Student.new('Penelope')
    
    assert_equal 'Penelope', student.name
  end

  def test_it_starts_with_no_cookies
    student = Student.new('Penelope')

    assert_equal [], student.cookies
  end

  def test_it_can_add_cookies
    student = Student.new('Penelope')

    student.add_cookie('Chocolate Chunk')
    student.add_cookie('Snickerdoodle')

    assert_equal ["Chocolate Chunk", "Snickerdoodle"], student.cookies
  end
end
