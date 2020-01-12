class Project
  
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = backers
  end
  
  def backers
    prbs = ProjectBacker.all.select {|prb| prb.project == self}
    prbs.map {|prb| prb.backer}
  end
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
end