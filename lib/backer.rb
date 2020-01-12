class ProjectBacker
  attr_reader :project, :backer
  
  @@all = []
  
  def initialize(project, Backer)
    @project = project
    @Backer = backer
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end