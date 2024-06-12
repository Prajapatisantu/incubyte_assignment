# spec/string_calculator_spec.rb

require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  describe '#add' do
    context 'with empty string' do
      it 'returns 0 for an empty string' do
        expect(subject.add('')).to eq(0)
      end
    end

    context 'with single number' do
      it 'returns the number for a single number string' do
        expect(subject.add('1')).to eq(1)
      end
    end

    context 'with two numbers' do
      it 'returns the sum of two numbers' do
        expect(subject.add('1,2')).to eq(3)
      end
    end

    context 'with new lines between numbers' do
      it 'supports new lines as delimiters' do
        expect(subject.add("1\n2,3")).to eq(6)
      end
    end

    context 'with custom delimiter' do
      it 'supports custom delimiter definition' do
        expect(subject.add("//;\n1;2")).to eq(3)
      end
    end

    context 'with negative numbers' do
      it 'raises an exception' do
        expect { subject.add("-1,2,-3") }.to raise_error(StandardError, "negative numbers not allowed: -1,-3")
      end
    end

  end
end
