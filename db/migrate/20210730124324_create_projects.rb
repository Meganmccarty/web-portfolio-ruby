class CreateProjects < ActiveRecord::Migration[6.1]
    def change
        create_table :projects do |t|
            t.string :name
            t.text :text
            t.string :image
            t.string :url
            t.integer :likes

            t.timestamps
        end
    end
end
