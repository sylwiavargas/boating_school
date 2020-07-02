class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(student, boating_test_name, boating_test_status)
        BoatingTest.new(student, boating_test_name, self, boating_test_status)
    end

end
