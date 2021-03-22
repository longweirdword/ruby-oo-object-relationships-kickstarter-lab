class Backer 
    attr_accessor :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def select_projects
        ProjectBacker.all.select{|project| project.backer == self}
    end 

    def backed_projects
        self.select_projects.collect{|backed_project| backed_project.project}
    end 

end 