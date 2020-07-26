class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, level)
    roster[level] ||= [ ]
    roster[level] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    hash = {}
    @roster.map do |key, value|
      hash[key] = value.sort
    end
    return hash
  end
end
