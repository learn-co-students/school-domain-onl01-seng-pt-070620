class School

attr_accessor :name, :roster 

  def initialize(name)
    @name = name 
    @roster ={}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade]<<  name
  end
  
  def grade(grade_number)
    roster[grade_number]
  end
  
  def sort 
    roster.map { |grade, name|[grade, name.sort] }.to_h
  end
end