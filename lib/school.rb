# code here!
class School
  attr_accessor :name, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if !roster.include?(grade)
    roster[grade] = []
  end
    roster[grade] << student
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    sortedHash = {}
    roster.each do |grade, student|
      sortedHash[grade] = student.sort
    end
    return sortedHash
  end

end
