class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :summary
      t.text :body
      t.text :description
      t.string :engine
      t.string :price
      t.string :drive_unit
      t.string :to100
      t.string :maxspeed
      t.timestamps
    end
  end
end
