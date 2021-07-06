class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def find_backer
        ProjectBacker.all.select do |element|
            element.project == self 
        end
    end
    

    def backers
        find_backer.collect do |element|
            element.backer
        end
    end

end