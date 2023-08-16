# frozen_string_literal: true

# Fetches content from a URL. Optionally has a parser parameter to process results
class RubyRestAgent::Fetcher
  attr_accessor :parser, :url

  def initialize(url = nil)
    @url = url
    @parser = RubyRestAgent::Parser.new
  end
end
