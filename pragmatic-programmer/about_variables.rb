class Student
    @@count = 0
    attr_accessor :id
    
    def initialize
        @@count += 1 
        @id = @@count
    end

    def self.count
        @@count
    end

    def say_hello
        puts "hello"
    end

end


x = Student.new
x1 = Student.new
puts Student.count

puts x.id
puts x1.id
puts "------"
puts Student.count
x.say_hello
begin
    Student.say_hello
rescue
    puts "Encountered error"
ensure
    puts "Program exited."
end
