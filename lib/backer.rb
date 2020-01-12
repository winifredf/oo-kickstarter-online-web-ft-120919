class Backer
  
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
  end
  
  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end
end