# frozen_string_literal: true
#
# - Utility methods
#
class RubyRestAgent::Utils
  def self.game_date(selected_date = nil)
    formatted_selected_date = DateTime.parse(selected_date.to_s).strftime("%Y%m%d")
    puts("selected date #{formatted_selected_date}")
    formatted_selected_date
  end

  def self.environment_check(env_vars)
    p "RubyRestAgent::Utils: ENV Vars = #{env_vars}"
    env_vars.all? { |env_var| ENV.key?(env_var) }
  end
end