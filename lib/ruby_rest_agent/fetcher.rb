# frozen_string_literal: true

class Fetcher
  attr_accessor :parser, :url

  def initialize(url = nil)
    @url = url
    @parser = Parser.new
  end

  def game_date(selected_date = nil)
    formatted_selected_date = DateTime.parse(selected_date.to_s).strftime("%Y%m%d")
    puts("selected date #{formatted_selected_date}")
    formatted_selected_date
  end

  def all_env_variables_exist?
    ENV["MY_SPORTS_FEEDS_TOKEN"].present? &&
      ENV["MY_SPORTS_FEEDS_PASSWORD"].present? &&
      ENV["MY_SPORTS_FEEDS_HOST"].present?
  end
end
