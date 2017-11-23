class AddColumntoUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :isAdmin, :boolean, default: false
  end
end
