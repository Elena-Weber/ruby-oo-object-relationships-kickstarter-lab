class Project

    attr_accessor :title

@@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        our_backers = ProjectBacker.all.select{|bp|bp.project == self}
        our_backers.map{|bc|bc.backer}
    end

end