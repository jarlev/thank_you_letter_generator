class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.text :content
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
