require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#binding.pry
#0 #leave this here to ensure binding.pry isn't the last line

s1 = Student.new("Bob")
s2 = Student.new("Thompson")
s3 = Student.new("Dickson")
s4 = Student.new("Sainton")

i1 = Instructor.new("name")
i2 = Instructor.new("Master_Instructor")
i3 = Instructor.new("SailBoatqueen")

b1 = BoatingTest.new(s2, "first test", i1, "passed")
b2 = BoatingTest.new(s1, "second test", i1, "failed")
b5 = BoatingTest.new(s1, "second test", i1, "passed")
b6 = BoatingTest.new(s1, "second test", i1, "passed")
b3 = BoatingTest.new(s3, "third test", i2, "passed")
b4 = BoatingTest.new(s4, "fourth test", i3, "failed")

# spongebob = Student.new("Spongebob")
# patrick= Student.new("Patrick")

# puff= Instructor.new("Ms.Puff")
# krabs= Instructor.new("Mr.Krabs")

# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

# puts s1.class.find_student("Thompson")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line