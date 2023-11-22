#
# - Utility methods
#
class RubyRestAgent::Utils
  SPORTS_PROVIDER_ENV_VARIABLES = %w[
    MY_SPORTS_FEEDS_TOKEN
    MY_SPORTS_FEEDS_HOST
    MY_SPORTS_FEEDS_PASSWORD
    MY_SPORTS_FEEDS_MLB_GAMES_PATH
    MY_SPORTS_FEEDS_NBA_GAMES_PATH
    MY_SPORTS_FEEDS_NFL_GAMES_PATH
    MY_SPORTS_FEEDS_NHL_GAMES_PATH
  ]
  def self.game_date(selected_date = nil)
    formatted_selected_date = DateTime.parse(selected_date.to_s).strftime("%Y%m%d")
    puts("selected date #{formatted_selected_date}")
    formatted_selected_date
  end

  def self.environment_check
    SPORTS_PROVIDER_ENV_VARIABLES.all? { |env_var| ENV.key?(env_var) }
  end

  def self.environment_show
    result = ''
    SPORTS_PROVIDER_ENV_VARIABLES.each { |env_var| result << "#{env_var}: #{ENV[env_var]}\n" }
    result
  end
end