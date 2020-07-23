class School
  attr_accessor :roster, :school_name
  def initialize (school_name)
    @school_name=school_name
    @roster={}
  end
  def add_student(student_name,grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  def grade (student_grade)
    roster[student_grade]
  end
 def sort
    sorted_roster = {}
    roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end