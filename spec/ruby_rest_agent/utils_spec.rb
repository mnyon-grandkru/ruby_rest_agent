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