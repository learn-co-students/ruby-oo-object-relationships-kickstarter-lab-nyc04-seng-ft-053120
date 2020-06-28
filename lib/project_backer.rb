class ProjectBacker
    attr_reader :backer, :project
    @@all = []
    def initialize(project,backer)
        @backer = backer
        @project = project
        save
    end
    def self.all
        @@all
    end
    def save
        self.class.all << self
    end
end