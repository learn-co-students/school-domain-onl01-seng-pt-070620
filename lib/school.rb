require "pry"
#binding.pry
class School
  
  attr_accessor :student, :grade  
  
  def initialize(name)
     @roster= {}
  end
  
  def roster
    @roster
  end
  
  
  def add_student(student, grade)
    @roster[grade] = [] unless roster.include?(grade)
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
    
  def sort 
    @roster.each do |grade, student|
    @roster[grade] = student.sort
    @roster.sort 
  end
end

   
  end