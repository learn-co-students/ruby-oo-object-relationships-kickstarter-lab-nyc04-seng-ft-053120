require 'pry'

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
       ProjectBacker.new(project, self)
    end
    
    #this method is going to return all the 
    def find_projects
        #binding.pry
        ProjectBacker.all.select do |element|
        element.backer == self
        end
    end

    def backed_projects
        #binding.pry
        find_projects.collect do |element|
            element.project
        end    
    end

end
