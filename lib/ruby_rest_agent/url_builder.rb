# frozen_string_literal: true

module RubyRestAgent
  class UrlBuilder
    def self.games_url(league_name = "NBA")
      raise ArgumentError, "My SportsFeeds API URL missing: " unless RubyRestAgent::Utils.environment_check

      games_path_env_var = ENV.fetch("MY_SPORTS_FEEDS_#{league_name}_GAMES_PATH", nil)
      @url = "https://#{ENV.fetch("MY_SPORTS_FEEDS_TOKEN",
                                  nil)}:#{ENV.fetch("MY_SPORTS_FEEDS_PASSWORD",
                                                    nil)}@#{ENV.fetch("MY_SPORTS_FEEDS_HOST",
                                                                      nil)}/#{games_path_env_var}"
    end
  end
end
