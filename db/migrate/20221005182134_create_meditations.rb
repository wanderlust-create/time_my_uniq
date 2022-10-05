class CreateMeditations < ActiveRecord::Migration[7.0]
  def change
    create_table :meditations do |t|
      t.string :category
      t.text :link

      t.timestamps
    end
  end
end
