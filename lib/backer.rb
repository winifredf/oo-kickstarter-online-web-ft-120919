class Backer
  
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
  end
  
  def back_project(project)
    pb = ProjectBacker.all.select {|pb| pb.backer == self)}
    pbs.map {|pb| pb.project}
  end
  
  def back_project(project)
    ProjectBacker.new(project,self)
  end
end