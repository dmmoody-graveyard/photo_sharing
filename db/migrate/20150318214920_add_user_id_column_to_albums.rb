class AddUserIdColumnToAlbums < ActiveRecord::Migration
  def change
    remove_column :users, :user_id
    add_column :albums, :user_id, :int
  end
end
