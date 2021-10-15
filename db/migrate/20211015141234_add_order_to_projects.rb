class AddOrderToProjects < ActiveRecord::Migration[6.1]
    def change
        add_column :projects, :order, :integer
    end
end
