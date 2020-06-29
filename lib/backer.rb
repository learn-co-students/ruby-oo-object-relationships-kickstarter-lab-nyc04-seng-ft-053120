class Backer
    
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def find_back_projects
        ProjectBacker.all.select do |project|
            project.backer == self
        end
    end

    def backed_projects
        find_back_projects.map do |project|
            project.project
        end
    end
end