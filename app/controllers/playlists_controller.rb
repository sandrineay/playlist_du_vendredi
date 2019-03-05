class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all.order("created_at desc")
  end

  def show
    @playlist = Playlist.find(params[:id])
  end
end
