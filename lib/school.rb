require 'pry'

class School 
  attr_accessor :name, :roster, :grade
  attr_reader :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
   
  def add_student(name, grade)
    
    @roster[grade] ||= []
    @roster[grade] << name
    
  end 
  def grade(grade)
    roster[grade] 
  end 
  def sort
      roster.each do |grade, names|
      sorted_names = names.sort
      roster[grade] = sorted_names
    end
    
  end 

end 