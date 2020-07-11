class Project 
attr_accessor :title

def initialize(title)
    @title = title 

end

def add_backer(backer)
ProjectBacker.new(self, backer)
end

def backers 
    x = ProjectBacker.all.select{|project| project.project == self}
    x.map{|project| project.backer}

end
end