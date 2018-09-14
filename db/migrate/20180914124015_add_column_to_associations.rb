class AddColumnToAssociations < ActiveRecord::Migration[5.2]
  def change
    add_column :associations, :id_sol, :integer
  end
end
