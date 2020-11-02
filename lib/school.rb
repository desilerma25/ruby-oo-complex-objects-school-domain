class School
    attr_accessor :school_name, :roster, :student # create a setter/getter
    
    def initialize(school_name) # intialize a new school
        @school_name = school_name
        @roster = {} # need a roster that returns an empty hash
    end

    def add_student(student, grade) # add students, arg is stu name and grade
        roster[grade] ||= [] # if roster[grade] has a value leave as is, otherwise change it
        roster[grade] << student # we need to shovel the student into this new array 
    end

    def grade(student_grade) # take arg of a grade
        roster[student_grade] # return students in grade
    end

    def sort
        sorted_students = {} # create a new hash for the sorted students
        roster.each do |grade, student| # iterate through each grade/student
            sorted_students[grade] = student.sort # focus on grade, sort the stu. w/ corresponding grade
        end
        sorted_students # call the new array
    end

end