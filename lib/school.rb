class School

  attr_reader :name, :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if !roster.has_key? grade
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
    end

    def grade(grade)
       if roster.has_key? grade
        roster[grade]
       end
    end

    def sort
      roster.each do |key, value|
        value.sort!
      end
    end




end
