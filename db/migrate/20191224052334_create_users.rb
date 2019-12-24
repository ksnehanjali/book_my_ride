class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
        t.string :first_name
        t.string :last_name
        t.string :contact_number
        t.string :employee_id
        t.string :email_id
        t.string :password

      t.timestamps
    end
  end
end
