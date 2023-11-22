# frozen_string_literal: true

require 'spec_helper'

describe RubyRestAgent::UrlBuilder, '#games_url' do
  before do
    RubyRestAgent::Utils::SPORTS_PROVIDER_ENV_VARIABLES.each do |env_var|
      allow(ENV).to receive(:key?).with(env_var).and_return(true)
      allow(ENV).to receive(:[]).with(env_var).and_return(env_var)
    end
  end


  describe "for the NBA" do
    let(:desired_nba_url) { "https://#{ENV['MY_SPORTS_FEEDS_TOKEN']}:#{ENV['MY_SPORTS_FEEDS_PASSWORD']}@#{ENV['MY_SPORTS_FEEDS_HOST']}/#{ENV['MY_SPORTS_FEEDS_NBA_GAMES_PATH']}" }
    describe 'on success' do
      it 'returns the My Sports Feeds URL for a league if a league is provided' do
        expect(RubyRestAgent::UrlBuilder.games_url('NBA')).to eq(desired_nba_url)
      end
    end
  end

  describe "for the NHL" do
    let(:desired_nhl_url) { "https://#{ENV['MY_SPORTS_FEEDS_TOKEN']}:#{ENV['MY_SPORTS_FEEDS_PASSWORD']}@#{ENV['MY_SPORTS_FEEDS_HOST']}/#{ENV['MY_SPORTS_FEEDS_NHL_GAMES_PATH']}" }
    describe 'on success' do
      it 'returns the My Sports Feeds URL for a league if a league is provided' do
        expect(RubyRestAgent::UrlBuilder.games_url('NHL')).to eq(desired_nhl_url)
      end
    end
  end

  describe "for the NFL" do
    let(:desired_nfl_url) { "https://#{ENV['MY_SPORTS_FEEDS_TOKEN']}:#{ENV['MY_SPORTS_FEEDS_PASSWORD']}@#{ENV['MY_SPORTS_FEEDS_HOST']}/#{ENV['MY_SPORTS_FEEDS_NFL_GAMES_PATH']}" }
    describe 'on success' do
      it 'returns the My Sports Feeds URL for a league if a league is provided' do
        expect(RubyRestAgent::UrlBuilder.games_url('NFL')).to eq(desired_nfl_url)
      end
    end
  end

  describe "for the MLB" do
    let(:desired_mlb_url) { "https://#{ENV['MY_SPORTS_FEEDS_TOKEN']}:#{ENV['MY_SPORTS_FEEDS_PASSWORD']}@#{ENV['MY_SPORTS_FEEDS_HOST']}/#{ENV['MY_SPORTS_FEEDS_MLB_GAMES_PATH']}" }
    describe 'on success' do
      it 'returns the My Sports Feeds URL for a league if a league is provided' do
        expect(RubyRestAgent::UrlBuilder.games_url('MLB')).to eq(desired_mlb_url)
      end
    end
  end
end