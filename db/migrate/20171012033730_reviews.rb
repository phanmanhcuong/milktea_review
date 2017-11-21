class Reviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title, null: false, default: ""
      t.string :store, null: false, default: ""
      t.integer :price_from, null: false, default: ""
      t.integer :price_upto, null: false, default: ""
      t.string :currency, default: "VND"
      t.string :content, null: false, default: ""
      t.string :image
      t.integer :user_id
      t.float :quality
      t.float :place
      t.float :service
      t.float :price
      t.float :average_point
      t.time :open_time
      t.time :close_time
      t.integer :like_count

      t.timestamps
    end
  end
end
