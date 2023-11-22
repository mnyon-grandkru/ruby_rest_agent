# frozen_string_literal: true
require 'dotenv/load'
require_relative "ruby_rest_agent/version"
require_relative "ruby_rest_agent/fetcher"
require_relative "ruby_rest_agent/parser"
require_relative "ruby_rest_agent/client"
require_relative "ruby_rest_agent/utils"
require_relative "ruby_rest_agent/url_builder"

module RubyRestAgent
  class Error < StandardError; end
  # Your code goes here...
end
