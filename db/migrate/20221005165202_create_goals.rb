class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.references :life_part, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.float :points

      t.timestamps
    end
  end
end
