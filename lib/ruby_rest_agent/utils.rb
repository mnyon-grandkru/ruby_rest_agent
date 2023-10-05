# frozen_string_literal: true

#
# - Utility methods
#
module RubyRestAgent
  class Utils
    def self.game_date(selected_date = nil)
      formatted_selected_date = DateTime.parse(selected_date.to_s).strftime("%Y%m%d")
      puts("selected date #{formatted_selected_date}")
      formatted_selected_date
    end

    def self.environment_check
      [ENV.fetch("MY_SPORTS_FEEDS_TOKEN", nil), ENV.fetch("MY_SPORTS_FEEDS_PASSWORD", nil),
       ENV.fetch("MY_SPORTS_FEEDS_HOST", nil)].all?
    end
  end
end
