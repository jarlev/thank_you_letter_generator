class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.integer :greeting_id
      t.integer :body_id
      t.integer :closing_id
      t.string :to_name
      t.string :letter_type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
