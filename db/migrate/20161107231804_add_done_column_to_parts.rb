class AddDoneColumnToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :done, :boolean, default: false
  end
end
