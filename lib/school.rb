class School
    
  def initialize(school)
    @school = school
    @roster = {}
  end 
  
  def roster
    @roster
  end 
  
  
# is able to add a student
# is able to add multiple students to a class (grade)
  
  def add_student(name,grade)
    @school = name
    @grade = grade
      if !@roster.include?(grade)
      @roster[grade] = []
      end 
    @roster[grade] << name
  end 
  
# is able to retreive students from a grade
 
  def grade(grade)
    @roster[grade]
  end 

# is able to sort the students

def sort
    @roster.each do |grade, names| 
      @roster[grade] = names.sort
    end 
end 

end 

