require 'pry'

class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(boating_test_name, instructor, boating_test_status)
        BoatingTest.new(self, boating_test_name, instructor, boating_test_status)
    end

    def self.find_student(name)
        # go to the Student.all array
        # find an instance whose name is the argument
        self.all.find do |student| 
            student.first_name == name
        end
    end

    # binding.pry
end

####### TO DO:
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)

#### DONE:
# * should initialize with `first_name`
# * `Student.all` should return all of the student instances
# * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `Student.find_student` will take in a first name and output the student (Object) with that name