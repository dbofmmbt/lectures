# frozen_string_literal: true

require_relative '../examples/baskara'

RSpec.describe Baskara do
  describe '#value' do
    it 'is valid for negative delta' do
      baskara = Baskara.new(1, 2, 3)

      expect(baskara.delta).to be < 0
      expect(baskara.value).to eq([])
    end

    it 'is valid for delta equals to zero' do
      baskara = Baskara.new(1, 2, 1)

      expect(baskara.delta).to be == 0
      expect(baskara.value).to eq([-1])
    end

    it 'is valid for positive delta' do
      baskara = Baskara.new(1, 5, 1)

      expect(baskara.delta).to be > 0
      first, second = baskara.value

      expect(first).to be_within(0.01).of(-4.7913)
      expect(second).to be_within(0.01).of(-0.2087)
    end
  end
end
