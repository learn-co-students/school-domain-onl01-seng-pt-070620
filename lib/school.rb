require 'pry'
# code here!
class School
  attr_accessor :name, :roster, :grade
  def initialize(name)
    @school_name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    # we want a key that points to the value of an Array
    #{key: [] }
    
    if @roster == {}
      @roster[grade] = [student_name]
      # binding.pry
    elsif @roster != {}
      if roster.keys.include?(grade)
        @roster[grade].push(student_name)
      else 
        @roster[grade] = [student_name]  
      end
    end
  end
  
  def grade(grade)
    #return all students in the specific grade passed in
    roster.keys.each do |key|
      if key == grade
        return roster[grade]
        # binding.pry
      end
    end
  end
  
  def sort
    sorted = {}
    roster.collect do |key, val|
      sorted[key] = val.sort
      # binding.pry
    end
    return sorted
  end
end