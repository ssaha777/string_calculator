class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
      numbers.split(delimiter).map(&:to_i).sum
    else
      numbers.split(/,|\n/).map(&:to_i).sum
    end
  end
end
