class Project

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def projects
        ProjectBacker.all.select { |instance| instance.project == self }
    end

    def backers
        projects.map { |instance| instance.backer }
    end
end
