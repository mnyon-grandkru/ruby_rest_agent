# frozen_string_literal: true

require 'spec_helper'
describe RubyRestAgent::Client, 'fetcher' do
  let(:client) { RubyRestAgent::Client.new(fetcher, parser) }
  let(:fetcher) { RubyRestAgent::Fetcher.new }
  let(:parser) { RubyRestAgent::Parser.new }

  it 'has a fetcher' do
    expect(client.fetcher).to be_a(RubyRestAgent::Fetcher)
  end
end
