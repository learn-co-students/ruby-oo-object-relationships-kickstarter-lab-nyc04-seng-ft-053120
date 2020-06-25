require 'pry'

class Backer

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    backed_projects = ProjectBacker.all.select { |project| project.backer == self }
    backed_projects.map(&:project)
  end
end