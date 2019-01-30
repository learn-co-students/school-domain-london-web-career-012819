# code here!
require "pry"

class School

  def initialize(school)
    @school = school
  end

  def roster
    @roster ||= {}
  end

  def add_student(student, grade)

    roster[grade] ||= []
    roster[grade] << student

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] ||= []
      sorted[grade] = students.sort()
    end

    sorted
  end
end
