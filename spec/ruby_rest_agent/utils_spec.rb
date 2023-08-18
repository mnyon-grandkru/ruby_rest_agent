# frozen_string_literal: true

require "date"
require "spec_helper"

describe RubyRestAgent::Utils, "#game_date" do
  it 'returns date in a format "YYYYMMDD" for yesterday with no arguments' do
    yesterday = Date.today - 1
    expect(RubyRestAgent::Utils.game_date).to eq(yesterday.strftime("%Y%m%d"))
  end

  it 'returns date in a format "YYYYMMDD" for another date with  arguments' do
    expect(RubyRestAgent::Utils.game_date(Date.new(2002, 6, 24))).to eq(Date.new(2002, 6, 24).strftime("%Y%m%d"))
  end
end
