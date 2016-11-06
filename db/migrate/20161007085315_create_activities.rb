class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :type
      t.date :class_date
      t.integer :size
      t.integer :duration
      t.integer :room_id
      t.integer :instructor_id

      t.timestamps null: false
    end
  end
end
