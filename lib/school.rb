# code here!

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
    @roster.collect do |key, value|
      puts "key is #{key}"
      puts "before #{value} "
      
      value = value.sort
      
      puts "after  #{value} "
    end
  @roster
  end
end #ends class