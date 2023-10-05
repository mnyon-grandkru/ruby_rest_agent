# frozen_string_literal: true

# Fetches content from a URL. Optionally has a parser parameter to process results
module RubyRestAgent
  class Client
    attr_accessor :fetcher, :parser

    def initialize(fetcher = nil, parser = nil)
      @fetcher = fetcher
      @parser = parser
    end
  end
end
