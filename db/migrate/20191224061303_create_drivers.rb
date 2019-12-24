class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
        t.string :first_name
        t.string :last_name
        t.string :mobile_number
        t.string :license_number
      t.timestamps
    end
  end
end
