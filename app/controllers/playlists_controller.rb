class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.where(special: false).order("created_at desc")
  end

  def show
    @playlist = Playlist.find(params[:id])
  end
end
