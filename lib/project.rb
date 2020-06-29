class Project
    
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def find_backers
        ProjectBacker.all.select do |backers|
            backers.project == self
        end
    end

    def backers
        find_backers.map do |backers|
            backers.backer
        end
    end

end
