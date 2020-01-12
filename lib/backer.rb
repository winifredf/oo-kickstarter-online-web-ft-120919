class Backer
  
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
  end
  
  def backed_project(project)
    @backed_projects << project
    project.add_back
  end
  
  def back_project(project)
    ProjectBacker.new(project,self)
  end
end