class RemoveDeadlineFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :deadline, :boolean
  end
end
