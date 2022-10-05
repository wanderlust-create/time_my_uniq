class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :action, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.float :points

      t.timestamps
    end
  end
end
