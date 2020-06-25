class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    # helper function
    def find_projects
        ProjectBacker.all.select do |element|
            element.backer == self
        end
    end
    # ---------------

    def backed_projects
        find_projects.collect do |element|
            element.project
        end
    end
end