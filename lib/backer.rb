require 'pry'
class Backer
    attr_reader :name
   
    def initialize(name)
        @name = name 
        
    end
    def back_project(project_instance)
        ProjectBacker.new(project_instance, self)
    end
    def projects
        ProjectBacker.all.select do |pro_inst|
            pro_inst.backer == self
        end
    end
    def backed_projects
        self.projects.map do |pro_inst|
          pro_inst.project
        end
    end
    
end