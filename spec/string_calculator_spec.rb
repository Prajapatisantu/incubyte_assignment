# spec/string_calculator_spec.rb

require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add('')).to eq(0)
    end

  end

end
