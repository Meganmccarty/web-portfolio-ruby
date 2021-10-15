class AddOrderToSkills < ActiveRecord::Migration[6.1]
    def change
        add_column :skills, :order, :integer
    end
end
