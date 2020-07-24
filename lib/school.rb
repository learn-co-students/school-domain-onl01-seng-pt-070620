# code here!
class School
 attr_reader :roster

def initialize(new)
  @new = new 
  @roster = {}
end 

def add_student(student,grade)
  if @roster[grade] == nil 
    @grade = grade
    @roster[@grade] = []
    @roster[@grade] << student 
  else @roster[grade] << student 
 end 
def grade(grade)
  return @roster[grade]
end 

def sort 
  sorted_roster = {}
  @roster.each do |grade, name|
    sorted_roster[grade] = name.sort 
end 
sorted_roster
end 
end 
end 

