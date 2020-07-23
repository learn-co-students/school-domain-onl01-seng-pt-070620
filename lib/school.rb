# code here!
class School

attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

def add_student(name, grade)
if roster.has_key?(grade)
  roster[grade] << name
else
  roster[grade] = [name]
end
end

def grade(number)
  @roster[number]
end

def sort
   @roster.each do |grade, name|
     @roster[grade] = name.sort
   end
 end

end
