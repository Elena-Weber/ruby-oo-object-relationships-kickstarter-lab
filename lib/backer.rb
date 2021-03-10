class Backer

    attr_accessor :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        our_projects = ProjectBacker.all.select{|bp|bp.backer == self}
        our_projects.map{|pr|pr.project}
    end

end