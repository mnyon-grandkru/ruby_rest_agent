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
  describe 'on success' do
    before do
      RubyRestAgent::Utils::SPORTS_PROVIDER_ENV_VARIABLES.each do |env_var|
        allow(ENV).to receive(:key?).with(env_var).and_return(true)
        allow(ENV).to receive(:[]).with(env_var).and_return(env_var)
      end
    end
    
    it 'returns true if the environment is correct' do
      expect(RubyRestAgent::Utils.environment_check).to be_truthy
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
      expect(RubyRestAgent::Utils.environment_check).to be_falsey
    end
  end
end

describe RubyRestAgent::Utils, '.environment_show' do
  describe 'on success' do
    before do
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_TOKEN').and_return('MY_SPORTS_FEEDS_TOKEN')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_HOST').and_return('MY_SPORTS_FEEDS_HOST')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_PASSWORD').and_return('MY_SPORTS_FEEDS_PASSWORD')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_NBA_GAMES_PATH').and_return('MY_SPORTS_FEEDS_NBA_GAMES_PATH')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_NHL_GAMES_PATH').and_return('MY_SPORTS_FEEDS_NHL_GAMES_PATH')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_NFL_GAMES_PATH').and_return('MY_SPORTS_FEEDS_NFL_GAMES_PATH')
      allow(ENV).to receive(:[]).with('MY_SPORTS_FEEDS_MLB_GAMES_PATH').and_return('MY_SPORTS_FEEDS_MLB_GAMES_PATH')
    end

    it 'shows all the environment variables for the sports provider' do
      expect(RubyRestAgent::Utils.environment_show).to eq("MY_SPORTS_FEEDS_TOKEN: MY_SPORTS_FEEDS_TOKEN\nMY_SPORTS_FEEDS_HOST: MY_SPORTS_FEEDS_HOST\nMY_SPORTS_FEEDS_PASSWORD: MY_SPORTS_FEEDS_PASSWORD\nMY_SPORTS_FEEDS_MLB_GAMES_PATH: MY_SPORTS_FEEDS_MLB_GAMES_PATH\nMY_SPORTS_FEEDS_NBA_GAMES_PATH: MY_SPORTS_FEEDS_NBA_GAMES_PATH\nMY_SPORTS_FEEDS_NFL_GAMES_PATH: MY_SPORTS_FEEDS_NFL_GAMES_PATH\nMY_SPORTS_FEEDS_NHL_GAMES_PATH: MY_SPORTS_FEEDS_NHL_GAMES_PATH\n")
    end
  end
end
