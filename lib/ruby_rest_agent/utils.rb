# frozen_string_literal: true
#
# - Utility methods
#
class RubyRestAgent::Utils
  def game_date(selected_date = nil)
    formatted_selected_date = DateTime.parse(selected_date.to_s).strftime("%Y%m%d")
    puts("selected date #{formatted_selected_date}")
    formatted_selected_date
  end
end