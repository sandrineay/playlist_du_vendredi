class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :title
      t.boolean :featured
      t.boolean :special

      t.timestamps
    end
  end
end
