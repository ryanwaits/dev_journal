class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.text :description
      t.integer :estimate
      t.integer :actual
      t.text :reflection
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
