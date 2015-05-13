class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :initialdate
      t.integer :duration
      t.date :finaldate
      t.integer :user_id
      t.boolean :finished
      t.integer :responsible_id
      t.timestamps
    end
  end
end
