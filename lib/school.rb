require 'pry'
class School
    
    
    def initialize(name)
        @name = name
        @roster = Hash.new
    end
    def add_student(name,grade)
        if @roster.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
        
    end
    def roster
        @roster
    end

    def grade(int)
        @roster[int]
    end
    
    def sort
        ##@roster.sort_by{|k,v| v.sort}
        sortedhash = Hash.new
        @roster.collect do |k,v|
            v.sort!
            sortedhash[k] = v
            
        end
        sortedhash
     end 
end