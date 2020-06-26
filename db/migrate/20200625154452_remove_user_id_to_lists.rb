class RemoveUserIdToLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :User_id,:references
  end
end
