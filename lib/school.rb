class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(grade)
    roster[grade]
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def sort
    sorted_grades = {}
    roster.each do |grade, student_name|
      sorted_grades[grade]= student_name.sort
    end
    sorted_grades
  end

end
