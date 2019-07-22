class Student
    attr_accessor :first_name
    
    @@all=[]
    
    def initialize(first_name)
        @first_name
        @@all << self
    end

    def self.all
        @@all
    end
    #binding.pry

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def Student.find_student(firstname)
        @@all.find do |student|
            student.first_name == firstname
        end
    end

    def counttests
        alltests= BoatingTest.all.select do |tests|
            tests.student == self.first_name
        end
        count= alltests.length
    end

    def countpassedtests
        alltests= BoatingTest.all.select do |tests|
            tests.student == self.first_name && tests.status == "passed"
        end
        count2= alltests.length
    end


    def grade_percentage
        return (self.countpassedtests.to_f/self.counttests.to_f)
    end

end
