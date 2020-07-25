class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

 def add_student(student_name, grade)
  if @roster[grade]
    @roster[grade] << student_name
  else
    @roster[grade] = []
    @roster[grade] << student_name
   end
 end
 
 def sort 
    sorted_hash = {}
    @roster.each do |key, value|

      
      value = value.sort
      sorted_hash[key] = value
      
      end           #ends each
  sorted_hash
  end
  
  def grade(grade_number)
    roster[grade_number]
 
    
 end
end
 

