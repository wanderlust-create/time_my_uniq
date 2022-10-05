class CreateLifeParts < ActiveRecord::Migration[7.0]
  def change
    create_table :life_parts do |t|
      t.references :my_life, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.float :points

      t.timestamps
    end
  end
end
