
class School

  attr_accessor :name, :grade
  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    @name = name
    @grade = grade
    if !@roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(x)
    @roster[x]
  end

  def sort
    @roster.each {|grade,name| @roster[grade] = name.sort}
  end
end
