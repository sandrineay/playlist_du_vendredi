class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.where(special: false)
  end

  def show
  end
end
