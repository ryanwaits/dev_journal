class AddPriorityColumnToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :priority, :integer, default: 1
  end
end
