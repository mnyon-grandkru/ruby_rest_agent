# frozen_string_literal: true

require "rails_helper"

describe Fetcher, "#all_env_variables_exist?" do
  before do
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_TOKEN").and_return("MY_SPORTS_FEEDS_TOKEN")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_HOST").and_return("MY_SPORTS_FEEDS_HOST")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_PASSWORD").and_return("MY_SPORTS_FEEDS_PASSWORD")
  end
  it "returns true if all env variables exist" do
    expect(subject.all_env_variables_exist?).to eq(true)
  end
end

describe Fetcher, "#game_date" do
  let(:fetcher) { described_class.new }
  before do
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_TOKEN").and_return("MY_SPORTS_FEEDS_TOKEN")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_HOST").and_return("MY_SPORTS_FEEDS_HOST")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_PASSWORD").and_return("MY_SPORTS_FEEDS_PASSWORD")
  end

  it 'returns date in a format "YYYYMMDD" for yesterday with no arguments' do
    expect(fetcher.game_date(Date.yesterday)).to eq(Date.yesterday.strftime("%Y%m%d"))
  end

  it 'returns date in a format "YYYYMMDD" for another date with no arguments' do
    expect(fetcher.game_date(Date.new(2002, 6, 24))).to eq(Date.new(2002, 6, 24).strftime("%Y%m%d"))
  end
end
