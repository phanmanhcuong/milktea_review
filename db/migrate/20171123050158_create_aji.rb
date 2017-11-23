class CreateAji < ActiveRecord::Migration[5.1]
  def change
    create_table :ajis do |t|
      t.string :label

      t.timestamps
    end

    add_column :reviews, :aji_id, :integer
  end
end
