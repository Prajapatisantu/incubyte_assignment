# spec/string_calculator_spec.rb

require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add('')).to eq(0)
    end

    it 'returns the number for a single number string' do
      expect(subject.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(subject.add('1,2')).to eq(3)
    end

    it 'supports new lines as delimiters' do
      expect(subject.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter definition' do
      expect(subject.add("//;\n1;2")).to eq(3)
    end

  end
end
