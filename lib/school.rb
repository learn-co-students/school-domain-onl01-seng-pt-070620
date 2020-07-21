# code here!
class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, student_grade)
    roster[student_grade] ||= []
    roster[student_grade] << student_name
  end
  
 def grade(grade_num)
  return roster[grade_num]
 end
  
  def sort
    roster.collect do |grade, student_array|
      roster[grade] = student_array.sort
        return roster
      end
    end
  end