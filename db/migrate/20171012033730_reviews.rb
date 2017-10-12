class Reviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title, null: false, default: "Unknown title"
      t.string :store, null: false, default: "Unknown"
      t.integer :price, null: false, default: "0"
      t.string :content, null: false, default: "Unknown"
      t.string :image
      t.integer :user_id
    end
  end
end
