ActiveAdmin.register Authoring do
  permit_params :song_id, :artist_id

  form do |f|
    f.input :song, collection: Song.order(title: :asc)
    f.input :artist, collection: Artist.order(name: :asc)
    f.actions
  end
end
