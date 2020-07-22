# code here!
require 'pry'
class School
  
  attr_accessor :roster
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student (name, grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def roster
    @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    sorted_hash = {}
    @roster.each do |key, value|

      
      value = value.sort
      sorted_hash[key] = value
      
      end           #ends each
  sorted_hash
  end
end #ends class