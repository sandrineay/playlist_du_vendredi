class PagesController < ApplicationController
  def home
    @featured_playlist = Playlist.where(featured: true).first
    @latest_playlists = Playlist.where(featured: false).order("created_at desc").first(3)
  end

  def special
    @playlists = Playlist.where(special: true)
  end

  def about
  end
end
