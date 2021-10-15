class AddDemoToProjects < ActiveRecord::Migration[6.1]
    def change
        add_column :projects, :demo, :string
    end
end
