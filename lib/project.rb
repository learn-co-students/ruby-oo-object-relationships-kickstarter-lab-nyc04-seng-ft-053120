require "pry"
class Project
    attr_reader :title
    def initialize(title)
        @title=title
    end
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def backers
        #binding.pry
        select_backers=ProjectBacker.all.select{|proj_backer|proj_backer.project==self}
        select_backers.collect{|instances|instances.backer}
    end
end