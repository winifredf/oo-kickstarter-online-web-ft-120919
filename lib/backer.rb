class Backer
  
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project
    pbrs = ProjectBacker.all select {|pbr| pbr.backer == self}
    pbrs.map {|pbr| prb.project}
  end
  
  def back_project(project)
    ProjectBacker.new(project, self)
  end
end

class ProjectBacker
  attr_reader :project, :backer
  
  @@all = []
  
  def initialize(project, backer)
    @project = project
    @backer = backer
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def back_project(project)
    
end