class Backer
    attr_reader :name
    def initialize(name)
        @name=name
    end
    def back_project(project)
        ProjectBacker.new(project,self)
    end
    def backed_projects
        select_projects=ProjectBacker.all.select{|backer_proj|backer_proj.backer==self}
        select_projects.collect{|instances|instances.project}
    end
end
