require 'pry'

class School
  attr_accessor :roster
  attr_writer :add_student, :grade, :sort
  def initialize(school)
    @school = school
    @roster = {}
  end 
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade]<< student
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each {|key, value| value.sort!}
  end
end 


