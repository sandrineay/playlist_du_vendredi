ActiveAdmin.register Belonging do
  permit_params :playlist_id, :category_id, :song_id

  form do |f|
    f.input :playlist, collection: Playlist.order(title: :asc)
    f.input :category, collection: Category.order(name: :asc)
    f.input :song, collection: Song.order(title: :asc)
    f.actions
  end
end
