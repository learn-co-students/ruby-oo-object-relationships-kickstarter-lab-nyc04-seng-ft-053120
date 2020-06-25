class Backer
  attr_reader :name 

  def initialize(name)
    @name = name 
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backers
    ProjectBacker.all.select { |inst| inst.backer == self }
  end

  def backed_projects
    self.backers.map { |inst| inst.project }
  end
end