class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        save
    end
    def self.all
        @@all
    end
    def save
        self.class.all << self
    end
    def add_backer(backer_instance)
        ProjectBacker.new(self, backer_instance)
    end
    def project_backers
        ProjectBacker.all.select do |pro_inst| 
            pro_inst.project == self
        end
    end

    def backers
       
        self.project_backers.map do |pr_in|
            pr_in.backer  
        end
    end

end