class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    flag = false
    split_by = /,|\n/

    if numbers.start_with?("//")
      split_by, flag, numbers = check_custom_delimiter(numbers)
    end

    num_arr = split_arr(split_by, numbers)
    check_negatives(num_arr)

    flag ? num_arr.inject(:*) : num_arr.sum
  end

  private

  def self.split_arr(split_by, arr)
    arr.split(split_by).map(&:to_i)
  end

  def self.check_negatives(num_arr)
    if !(negatives = num_arr.select { |n| n < 0 }).empty?
      raise "negative numbers not allowed: #{negatives.join(',')}"
    end
  end

  def self.check_custom_delimiter(numbers)
    split_by = numbers[2]
    flag = true if split_by == '*'
    numbers = numbers[4..-1]

    [split_by, flag, numbers]
  end
end
