class CreateProjectsTagsJoinTable < ActiveRecord::Migration[6.1]
    def change
        create_table :projects_tags, id: false do |t|
            t.belongs_to :project
            t.belongs_to :tag
        end
    end
end
