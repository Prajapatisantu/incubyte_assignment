class StringCalculator
  def add(string_numbers)
    return 0 if string_numbers.empty?

    string_numbers.split(/#{delimiter(string_numbers)}|[\n]/).map(&:to_i).sum
  end

  private

  def delimiter(numbers)
    # Default is ','
    delimiter_line = numbers.lines.first
    delimiter_line.include?("//") ? delimiter_line[2..-1].strip : ","
  end
end