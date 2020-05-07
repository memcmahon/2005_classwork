class Student
  attr_reader :name,
              :cookies

  def initialize(name)
    if name.class == String
      @name = name
    else
      @name = "Name not Provided"
    end
    @cookies = []
    @hungry = true
  end

  def add_cookie(cookie)
    @cookies << cookie
  end

  def hungry?
    @hungry
  end
end
