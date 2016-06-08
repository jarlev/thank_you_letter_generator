class CreateClosings < ActiveRecord::Migration
  def change
    create_table :closings do |t|
      t.text :content
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
