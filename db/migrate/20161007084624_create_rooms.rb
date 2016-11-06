class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :size
      t.string :type

      t.timestamps null: false
    end
  end
end
