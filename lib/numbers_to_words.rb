class Fixnum
  define_method(:numbers_to_words) do
    number_split = self.to_s.split("")
    # output_number = []
    def three_digits(arr)
      one_digits = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
      two_digits = { 0 => "", 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }
      three_digit_array = []
      if arr.length().==(1)
        arr.unshift(0)
        arr.unshift(0)
      elsif arr.length().==(2)
        arr.unshift(0)
      end
      puts arr
      if arr.at(0).!=(0)
        three_digit_array.push(two_digits.fetch(arr.at(0).to_i()))
      end
      if arr.at(1).!=(0)
        three_digit_array.push(two_digits.fetch(arr.at(1).to_i()))
      end
      if arr.at(2).!=(0)
        three_digit_array.push(one_digits.fetch(arr.at(2).to_i()))
      end
      three_digit_array.join()
    end
    three_digits(number_split)
  end
end
