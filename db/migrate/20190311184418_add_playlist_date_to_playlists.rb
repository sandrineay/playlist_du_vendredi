class AddPlaylistDateToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :playlist_date, :string
  end
end
