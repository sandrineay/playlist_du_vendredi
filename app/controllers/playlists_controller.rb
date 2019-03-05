class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.where(special: false)
  end

  def show
    @playlist = Playlist.find(params[:id])
  end
end
