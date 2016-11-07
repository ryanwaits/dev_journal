class AddInProgressColumnToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :in_progress, :boolean, default: true
  end
end
