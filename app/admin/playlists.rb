ActiveAdmin.register Playlist do
  permit_params :title, :featured, :special, :deezer_id, :spotify_link, :description
end
