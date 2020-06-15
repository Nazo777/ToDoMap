class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string    :title,      null:false
      t.text      :message
      t.text      :address
      t.float     :latitude,   null:false
      t.float     :longitude,  null:false
      t.timestamps
    end
  end
end
