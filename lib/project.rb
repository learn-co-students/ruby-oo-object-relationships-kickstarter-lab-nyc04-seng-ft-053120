class Project
    attr_reader :title
    @@all=[]
    def initialize(title)
        @title=title
        @@all<<self
    end
    def add_backer(backer)
        new_projectbacker=ProjectBacker.new(self,backer)
    end
    def project_pb
        ProjectBacker.all.select {|pb| pb.project==self}
    end
    def backers
        self.project_pb.map {|pb| pb.backer}
    end
    def self.all
        @@all
    end






end
