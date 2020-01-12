class Backer
  
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
  end
  
  def back_project(project)
    pb = ProjectBacker.all.select {|pb| pb.backer == self)}
  end
  
  def back_project(project)
    ProjectBacker.new(project,self)
  end
end