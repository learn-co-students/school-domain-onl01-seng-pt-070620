require 'pry'
class School 
  
  attr_accessor :roster, :name 
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name,grade)
    if @roster[grade] == nil 
     @roster[grade]=[]
   end 
    @roster[grade] << name 
  end
  
  def grade(grade)
    @roster[grade]
  end
  
 
  def sort
    collection = {}
    @roster.each do |grade,names|
      collection[grade] = names.sort 
    end
    collection
  end
end 




