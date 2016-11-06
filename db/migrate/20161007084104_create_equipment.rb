class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.decimal :cost
      t.date :buy_date
      t.string :description
      t.integer :room_id
      t.string :image

      t.timestamps null: false
    end
  end
end
