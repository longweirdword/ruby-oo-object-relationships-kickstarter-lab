class Project 
    attr_accessor :title

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def select_backers
        ProjectBacker.all.select{|project_collection| project_collection.project == self}
    end 

    def backers
        self.select_backers.collect{|project| project.backer}
    end 

end 