require "pry"

class School
  attr_reader :roster
  
  def initialize(name)
    @roster = {}
    @name = name
  end
  
  def add_student(name, grade)
    @roster[grade] ||= [] # if what is on the left hand side of the or equals(||=) doen't exist, create it and set it equal to what is on the right side. If what is on the left hside does exist do nothing.
    
    @roster[grade] << name
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    collection = {}
    @roster.each do |grade, students|
     values = students.sort
      collection[grade] = values
    end
    collection
  end
  
end

