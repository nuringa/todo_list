class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :title, null: false
      t.datetime :deadline
      t.boolean :active, default: true

      t.references :project, null: false, foreign_key: true
      t.timestamps
    end
  end
end
