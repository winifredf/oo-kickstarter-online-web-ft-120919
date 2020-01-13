class Project
  
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def back_project(project)
    @back_project = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_project(self) unless backer.backed_projects.include?(self)
  end
end

project = Project.new("Project With So Much Amaze")
