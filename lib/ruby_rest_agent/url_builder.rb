class RubyRestAgent::UrlBuilder
  def self.games_url(league_name = 'NBA')
    raise ArgumentError, 'My SportsFeeds API URL missing: ' unless RubyRestAgent::Utils.environment_check
    games_path_env_var = ENV["MY_SPORTS_FEEDS_#{league_name}_GAMES_PATH"]
    @url = "https://#{ENV['MY_SPORTS_FEEDS_TOKEN']}:#{ENV['MY_SPORTS_FEEDS_PASSWORD']}@#{ENV['MY_SPORTS_FEEDS_HOST']}/#{games_path_env_var}"
  end
end