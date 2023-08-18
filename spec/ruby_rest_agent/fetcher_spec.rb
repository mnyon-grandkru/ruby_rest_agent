# frozen_string_literal: true

require "spec_helper"

describe RubyRestAgent::Fetcher, "#all_env_variables_exist?" do
  before do
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_TOKEN").and_return("MY_SPORTS_FEEDS_TOKEN")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_HOST").and_return("MY_SPORTS_FEEDS_HOST")
    allow(ENV).to receive(:[]).with("MY_SPORTS_FEEDS_PASSWORD").and_return("MY_SPORTS_FEEDS_PASSWORD")
  end
  it "returns true if all env variables exist" do
    expect(subject.all_env_variables_exist?).to eq(true)
  end
end
