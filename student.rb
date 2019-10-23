# Create a Student class with introduction and favourite_number methods

class Student
    attr_accessor :first_name, :last_name, :primary_phone_number

    def introduction(target)
        puts "Hi #{target}, I am #{first_name}!"
    end

    def favourite_number
        7
    end
end

frank = Student.new
frank.first_name = "Frank"
frank.introduction("Katrina")
puts "Frank's favorite number is #{frank.favourite_number}."
