class HomeController < ApplicationController
  def index
    @summary = @shows_service.save_episodes
  end

  def shows
    @all_shows = @shows_service.episodes
  end

  def seasons
    @seasons = @shows_service.episodes
  end

  def episodes
    @episodes = @shows_service.episodes
  end

  def characters
    @characters = @shows_service.characters
  end

  def quotes
    @quotes = @shows_service.episodes
  end

  private

  def set_shows_service
    @shows_service = GlobalShows.new
  end
end
