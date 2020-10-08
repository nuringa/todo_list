class ChangeTasksActiveToComplete < ActiveRecord::Migration[5.2]
  def change
    change_column_default :tasks, :active, from: true, to: false
    rename_column :tasks, :active, :complete
  end
end
