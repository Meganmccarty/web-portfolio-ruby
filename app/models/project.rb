class Project < ActiveRecord::Base
    has_and_belongs_to_many :tags

    def self.render_all
        projects = Project.order(:order)
        projects.map do |project|
            {
                id: project.id,
                name: project.name,
                text: project.text,
                image: project.image,
                url: project.url,
                likes: project.likes,
                tags: project.tags
            }
        end
    end

    def self.find_by_path(path)
        id = path.split("/projects/")[1].to_i
        Project.find_by_id(id)
    end
end