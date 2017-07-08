class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :class_room_id
      t.string :name

      t.timestamps
    end
  end
end
