class AddUserToLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :User, foreign_key: true,null:false
  end
end
