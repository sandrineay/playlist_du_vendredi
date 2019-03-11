ActiveAdmin.register Playlist do
  permit_params :title, :featured, :special, :deezer_uid, :spotify_link, :description, :playlist_date
end
