# code here!
require 'pry'

class School

  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end
# binding.pry

  def add_student(students_name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << students_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sort = {}
    @roster.each  do |grade, list|
      sort[grade] = list.sort
    end
      sort
  end
  
end
