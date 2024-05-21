class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    num_arr = if numbers.start_with?("//")
                delimiter = numbers[2]
                numbers = numbers[4..-1]
                numbers.split(delimiter).map(&:to_i)
              else
                numbers.split(/,|\n/).map(&:to_i)
              end

    if !(negatives = num_arr.select { |n| n < 0 }).empty?
      raise "negative numbers not allowed: #{negatives.join(',')}"
    end

    num_arr.sum
  end
end
