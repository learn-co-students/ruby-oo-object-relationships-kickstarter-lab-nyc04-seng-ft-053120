class Backer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    all_backer_projectbackers = ProjectBacker.all.select do |projectbacker_instance|
      projectbacker_instance.backer == self
    end

    all_backer_projectbackers.map do |projectbacker_instance|
      projectbacker_instance.project
    end
  end
end