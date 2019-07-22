class Instructor
    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        @@all << self
    end


    #practice this method with finding one element from the student array
    #you CAN do student.first_name && student_secondvariable, etc
    def pass_student(student, test_name)
        test= BoatingTest.all.find do |testname|
            testname.test_name == test_name && testname.student == pass_student       
        end

        if test != nil
            testname.status= "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
        return test
    end

    def fail_student (student, test_name)
        test= BoatingTest.all.find do |testname|
            testname.test_name == test_name && testname.student == pass_student       
        end

        if test != nil
            testname.status= "fail"
        else
            BoatingTest.new(student, test_name, "fail", self)
        end
        return test
    end

end
