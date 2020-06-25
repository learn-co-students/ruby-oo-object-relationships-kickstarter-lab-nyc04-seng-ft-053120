class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    all_project_projectbackers = ProjectBacker.all.select do |projectbacker_instance|
      projectbacker_instance.project == self
    end

    all_project_projectbackers.map do |projectbacker_instance|
      projectbacker_instance.backer
    end
  end
end