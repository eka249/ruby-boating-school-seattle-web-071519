class BoatingTest
    
    attr_accessor :student, :test_name, :status, :instructor
    @@all=[]
    
    def initialize(student, test_name, status, instructor)
        @student=student
        @test_name=test_name
        @status=status
        @instructor=instructor
        @@all << self
    end

    def to_s
        test_name.to_s
    end

    def to_s
        status.to_s
    end


    def self.all
        @@all
    end


end
