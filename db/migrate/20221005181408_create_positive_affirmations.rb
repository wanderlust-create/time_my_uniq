class CreatePositiveAffirmations < ActiveRecord::Migration[7.0]
  def change
    create_table :positive_affirmations do |t|
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
