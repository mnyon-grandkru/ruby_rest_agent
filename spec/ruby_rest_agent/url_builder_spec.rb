# frozen_string_literal: true

require "spec_helper"

describe RubyRestAgent::UrlBuilder, "#games_url" do
  before do
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_TOKEN").and_return("MY_SPORTS_FEEDS_TOKEN")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_HOST").and_return("MY_SPORTS_FEEDS_HOST")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_PASSWORD").and_return("MY_SPORTS_FEEDS_PASSWORD")
  end

  describe "for the NBA" do
    before do
      allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_NBA_GAMES_PATH").and_return("MY_SPORTS_FEEDS_NBA_GAMES_PATH")
    end
    let(:desired_nba_url) { "https://#{ENV.fetch("MY_SPORTS_FEEDS_TOKEN", nil)}:#{ENV.fetch("MY_SPORTS_FEEDS_PASSWORD", nil)}@#{ENV.fetch("MY_SPORTS_FEEDS_HOST", nil)}/#{ENV.fetch("MY_SPORTS_FEEDS_NBA_GAMES_PATH", nil)}" }
    describe "on success" do
      it "returns the My Sports Feeds URL for a league if a league is provided" do
        expect(RubyRestAgent::UrlBuilder.games_url("NBA")).to eq(desired_nba_url)
      end
    end
  end

  describe "for the NHL" do
    before do
      allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_NHL_GAMES_PATH").and_return("MY_SPORTS_FEEDS_NHL_GAMES_PATH")
    end
    let(:desired_nhl_url) { "https://#{ENV.fetch("MY_SPORTS_FEEDS_TOKEN", nil)}:#{ENV.fetch("MY_SPORTS_FEEDS_PASSWORD", nil)}@#{ENV.fetch("MY_SPORTS_FEEDS_HOST", nil)}/#{ENV.fetch("MY_SPORTS_FEEDS_NHL_GAMES_PATH", nil)}" }
    describe "on success" do
      it "returns the My Sports Feeds URL for a league if a league is provided" do
        expect(RubyRestAgent::UrlBuilder.games_url("NHL")).to eq(desired_nhl_url)
      end
    end
  end

  describe "for the NFL" do
    before do
      allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_NFL_GAMES_PATH").and_return("MY_SPORTS_FEEDS_NFL_GAMES_PATH")
    end
    let(:desired_nfl_url) { "https://#{ENV.fetch("MY_SPORTS_FEEDS_TOKEN", nil)}:#{ENV.fetch("MY_SPORTS_FEEDS_PASSWORD", nil)}@#{ENV.fetch("MY_SPORTS_FEEDS_HOST", nil)}/#{ENV.fetch("MY_SPORTS_FEEDS_NFL_GAMES_PATH", nil)}" }
    describe "on success" do
      it "returns the My Sports Feeds URL for a league if a league is provided" do
        expect(RubyRestAgent::UrlBuilder.games_url("NFL")).to eq(desired_nfl_url)
      end
    end
  end

  describe "for the MLB" do
    before do
      allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_MLB_GAMES_PATH").and_return("MY_SPORTS_FEEDS_MLB_GAMES_PATH")
    end
    let(:desired_mlb_url) { "https://#{ENV.fetch("MY_SPORTS_FEEDS_TOKEN", nil)}:#{ENV.fetch("MY_SPORTS_FEEDS_PASSWORD", nil)}@#{ENV.fetch("MY_SPORTS_FEEDS_HOST", nil)}/#{ENV.fetch("MY_SPORTS_FEEDS_MLB_GAMES_PATH", nil)}" }
    describe "on success" do
      it "returns the My Sports Feeds URL for a league if a league is provided" do
        expect(RubyRestAgent::UrlBuilder.games_url("MLB")).to eq(desired_mlb_url)
      end
    end
  end
end
