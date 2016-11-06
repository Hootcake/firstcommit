class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.date :date_of_birth
      t.string :phone
      t.string :emergency_number
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
