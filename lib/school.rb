class School
attr_reader :name, :roster
def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)
@roster[grade] ||= []
@roster[grade]<<name
end

def grade(grade)
return @roster[grade]
end

def sort
sort_hash = {}
@roster.each do |grade, student_array|
sort_hash[grade]=student_array.sort
end
sort_hash
end


end
