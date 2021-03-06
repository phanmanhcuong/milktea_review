class CreateComment < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :parent
      t.text :content

      t.timestamps
    end
  end
end
