class ChangeNotiColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :notis, :review_title, :string
    remove_column :notis, :review_id
  end
end
