class PagesController < ApplicationController
  def home
    @featured_playlist = Playlist.where(featured: true).first
  end

  def special
    @playlists = Playlist.where(special: true)
  end

  def about
  end
end
