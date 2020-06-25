class Project
    attr_reader :title
   
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    # helper function
    def find_backers
        ProjectBacker.all.select do |element|
            element.project == self
        end
    end
    # ----------------

    def backers
        find_backers.collect do |element|
            element.backer
        end
    end
end