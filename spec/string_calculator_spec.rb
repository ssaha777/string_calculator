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

    context 'given numbers with new lines' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context 'given a custom delimiter' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'given negative numbers' do
      it 'raises an exception' do
        expect { StringCalculator.add("1,-2") }.to raise_error("negative numbers not allowed: -2")
      end

      it 'raises an exception with all negative numbers' do
        expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2,-3")
      end

      it 'does not raise any except with np negative numbers' do
        expect(StringCalculator.add("5,2,9")).to eq(16)
      end
    end
  end
end
