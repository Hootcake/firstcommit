class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.date :date_created
      t.date :expiry_date
      t.integer :length
      t.decimal :price_paid
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
