# frozen_string_literal: true

#
# RubyRestAgent::Utils
#
#
module RubyRestAgent
  class Utils
    # This method formats the date for a game. This is used by the game stats feed parser,
    def self.game_date(selected_date = Date.today - 1)
      formatted_selected_date = DateTime.parse(selected_date.to_s).strftime("%Y%m%d")
      puts("selected date #{formatted_selected_date}")
      formatted_selected_date
    end

    # This replicates the Date.yesterday from Rails, ubt
    def self.yesterday_given(date)
      date - 1
    end
  end
end
