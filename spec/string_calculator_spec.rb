require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'given an empty string' do
      it 'returns 0' do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context 'given a single number' do
      it 'returns the number' do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context 'given a multiple number' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1,2")).to eq(3)
      end
    end
  end
end
