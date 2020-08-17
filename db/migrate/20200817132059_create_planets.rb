class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
