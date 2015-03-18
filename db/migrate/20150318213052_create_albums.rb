class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.attachment :photo

      t.timestamps
    end
  end
end
