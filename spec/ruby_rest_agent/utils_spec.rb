# frozen_string_literal: true

require 'spec_helper'

describe RubyRestAgent::Utils, '#game_date' do
  describe 'on success' do
    let(:yesterday) { Date.today - 1 }
    let(:random_date) { Date.new(2002, 6, 24) }
    let(:utils_date) { described_class.new }

    it 'returns date in a format "YYYYMMDD" for yesterday with no arguments' do
      expect(utils_date.game_date(yesterday)).to eq(yesterday.strftime('%Y%m%d'))
    end

    it 'returns date in a format "YYYYMMDD" for another date with no arguments' do
      expect(utils_date.game_date(random_date)).to eq(random_date.strftime('%Y%m%d'))
    end
  end
end

describe RubyRestAgent::Utils, '.environment_check' do
  describe 'on success' do

    before do
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_TOKEN').and_return('MY_SPORTS_FEEDS_TOKEN')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_HOST').and_return('MY_SPORTS_FEEDS_HOST')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_PASSWORD').and_return('MY_SPORTS_FEEDS_PASSWORD')
    end

    it 'returns true if the environment is correct' do
      expect(RubyRestAgent::Utils.environment_check).to eq(true)
    end
  end

  describe 'on failure' do
    before do
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_TOKEN').and_return(nil)
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_HOST').and_return(nil)
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_PASSWORD').and_return('MY_SPORTS_FEEDS_PASSWORD')
    end

    it 'returns false if one of the required environment variables is not set' do
      expect(RubyRestAgent::Utils.environment_check).to eq(false)
    end
  end
end