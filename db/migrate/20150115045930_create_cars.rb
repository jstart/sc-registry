class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :display_name
      t.integer :year
      t.string :description
      t.string :make
      t.string :model
      t.string :color

      t.timestamps null: false
    end
  end
end
