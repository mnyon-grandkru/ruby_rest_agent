# frozen_string_literal: true

require 'spec_helper'

describe RubyRestAgent::Utils, '.game_date' do
  describe 'on success' do
    let(:yesterday) { Date.today - 1 }
    let(:random_date) { Date.new(2002, 6, 24) }


    it 'returns date in a format "YYYYMMDD" for yesterday with no arguments' do
      expect(RubyRestAgent::Utils.game_date(yesterday)).to eq(yesterday.strftime('%Y%m%d'))
    end

    it 'returns date in a format "YYYYMMDD" for another date with no arguments' do
      expect(RubyRestAgent::Utils.game_date(random_date)).to eq(random_date.strftime('%Y%m%d'))
    end
  end
end

describe RubyRestAgent::Utils, '.environment_check' do
  let(:env_vars) { ['MY_SPORTS_FEEDS_TOKEN','MY_SPORTS_FEEDS_HOST']}
  describe 'on success' do
    before do
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_TOKEN').and_return('MY_SPORTS_FEEDS_TOKEN')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_HOST').and_return('MY_SPORTS_FEEDS_HOST')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_PASSWORD').and_return('MY_SPORTS_FEEDS_PASSWORD')
    end

    it 'returns true if the environment is correct' do
      expect(RubyRestAgent::Utils.environment_check(env_vars)).to eq(true)
    end
  end

  describe 'on failure' do
    subject { described_class }
    before do
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_TOKEN').and_return(nil)
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_HOST').and_return(nil)
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_PASSWORD').and_return('MY_SPORTS_FEEDS_PASSWORD')
    end

    it 'returns false if one of the required environment variables is not set' do
      expect(RubyRestAgent::Utils.environment_check(env_vars)).to eq(false)
    end
  end
end