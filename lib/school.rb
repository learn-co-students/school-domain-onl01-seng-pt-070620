require 'pry'
class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name,grade)
    if !(@roster.key?(grade))
      @roster[grade]  = []
    end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_roster = {}
    @roster.each do |grade,students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
  
end

school = School.new("Bayside High School")