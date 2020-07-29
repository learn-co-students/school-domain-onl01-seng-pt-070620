class School
  attr_accessor :name, :roster, :grade

# Creates an empty roster
# Creates a school object by the given name
  def initialize(name)
    @name = name
    # @roster = {}
    @roster = Hash.new { |h, k| h[k] = [] }
  end

# Adds students by using grade as the key
  def add_student(student_name, grade)  
    # @roster[grade] ||= []                 
    @roster[grade] << student_name
  end
  
  
  #  Explain what this means up above
#   def add_student(name, grade)
#     @name = name  
#     @grade = grade
#     if @roster.include?(grade) == false 
#       @roster[grade] = []
#   end
#    @roster[grade] << name

# Returns class list of grade
  def grade(grade)
    roster[grade]
  end

# Sorts by grade and returns new, sorted list
  def sort
    new_roster = {}
    roster.each do |x, y|
      new_roster[x] = y.sort
    end
    new_roster
  end

  High_School = School.new(roster)
  High_School.add_student("Bob", 9)

end
