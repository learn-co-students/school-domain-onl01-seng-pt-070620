class School 
  def initialize(name)
    @name = name 
    @roster = {}
end 

  def roster
    @roster
  end 
  
  def add_student(name, grade)
    if self.roster[grade]
      self.roster[grade] << name
    else 
      self.roster[grade] = [name]
    end 
  end 
  
  def grade(grade)
    roster[grade]
end 

def sort 
  self.roster.each do |name, grade|
    grade.sort!
   end 
  end 
end 
