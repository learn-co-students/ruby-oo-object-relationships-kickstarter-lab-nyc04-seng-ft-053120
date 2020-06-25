class ProjectBacker

    attr_accessor :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.get_projects_by_backer(backer)
        project_arr = []
        @@all.each do |project_backer|
            if project_backer.backer == backer
                project_arr << project_backer.project
            end
        end
        project_arr.uniq
    end

    def self.get_backers_by_project(project)
        backers_arr = []
        @@all.each do |project_backer|
            if project_backer.project == project
                backers_arr << project_backer.backer
            end
        end
        backers_arr.uniq
    end

    def self.all
        @@all
    end
end