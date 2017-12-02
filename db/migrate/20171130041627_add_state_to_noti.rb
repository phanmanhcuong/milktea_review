class AddStateToNoti < ActiveRecord::Migration[5.1]
  def change
    add_column :notis, :state, :integer, default: 0
  end
end
