class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :certification
      t.string :name
      t.string :surname
      t.date :date_of_birth
      t.string :PPS
      t.string :phone_number
      t.string :address
      t.integer :manager
      t.string :username
      t.string :password
      t.string :image

      t.timestamps null: false
    end
  end
end
