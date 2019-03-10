class AddDeezerUidAndSpotifyLinkToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :deezer_uid, :string
    add_column :playlists, :spotify_link, :string
  end
end
