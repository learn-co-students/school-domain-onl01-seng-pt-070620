class School
  attr_accessor :name, :roster, :grade



  def initialize(name)
    @name = name
    # @roster = {}
    @roster = Hash.new { |h, k| h[k] = [] }
  end

  def add_student(student_name, grade)
    # @roster[grade] = []
    @roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_roster = {}
    roster.each do |x, y|
      new_roster[x] = y.sort
    end
    new_roster
  end


end
