class Backer
    attr_reader :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end
    def back_project(project)
        new_projectbacker=ProjectBacker.new(project,self)
    end
    def backed_projects
        self.backer_pb.map {|pb| pb.project}
    end
    def backer_pb
        ProjectBacker.all.select {|pb| pb.backer==self}
    end
    def self.all
        @@all
    end











end