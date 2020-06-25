class Backer

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select { |instance| instance.backer == self}
    end

    def backed_projects
        projects.map { |instance| instance.project }
    end

end