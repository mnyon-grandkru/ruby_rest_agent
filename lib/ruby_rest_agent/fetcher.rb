# frozen_string_literal: true

# Main class that fetches data from external sources.
module RubyRestAgent
  class Fetcher
    attr_accessor :parser, :url

    # Constructor. Take a URL and a parser as arguments
    def initialize(url = nil)
      @url = url
      @parser = nil
    end

    def all_env_variables_exist?
      ENV["MY_SPORTS_FEEDS_TOKEN"].present? &&
        ENV["MY_SPORTS_FEEDS_PASSWORD"].present? &&
        ENV["MY_SPORTS_FEEDS_HOST"].present?
    end
  end
end
