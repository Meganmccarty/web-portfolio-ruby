class CreateTags < ActiveRecord::Migration[6.1]
    def change
        create_table :tags do |t|
            t.string :name
            t.string :image
            t.belongs_to :projects

            t.timestamps
        end
    end
end
