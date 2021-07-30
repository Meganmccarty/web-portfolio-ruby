class Project < ActiveRecord::Base
    has_and_belongs_to_many :tags

    def self.render_all
        Project.all.map do |project|
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
end