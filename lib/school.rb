# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, num)
    if roster.include?(num) == false #I don't understand this part
       roster[num] = []
    end
      roster[num] << name
  end
  def grade(num)
    roster[num]
  end
  def sort
    roster.each do |num, name|
      roster[num] = name.sort #sorting elements in an array, assosiated with certain key
    end
  end
end