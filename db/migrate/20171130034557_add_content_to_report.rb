class AddContentToReport < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :reason, :string
  end
end
