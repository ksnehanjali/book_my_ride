class CreateCabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cabs do |t|
        t.string :cab_number
        t.integer :number_of_seats
      t.timestamps
    end
  end
end
