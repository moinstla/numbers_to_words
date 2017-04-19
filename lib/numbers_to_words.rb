class String
  define_method(:numbers_to_words) do
    number_split = self.to_s().split("")
    # output_number = []
    def three_digits(arr)
      zero_to_nine = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
      ten_to_nineteen = { 0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen" }
      twenty_to_ninety = { 0 => "", 1 => "", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }
      three_digit_array = []

      # ADDS ZEROS IF LESS THAN 3 DIGITS
      if arr.length().==(1)
        arr.unshift(0)
        arr.unshift(0)
      elsif arr.length().==(2)
        arr.unshift(0)
      end

      if arr.at(0).!=(0)
        three_digit_array.push(zero_to_nine.fetch(arr.at(0).to_i()) + 'hundred')
      end
      if arr.at(1).!=("0") && arr.at(1).!=("1")
        three_digit_array.push(twenty_to_ninety.fetch(arr.at(1).to_i()))
      elsif arr.at(1).==("1")
        three_digit_array.push(ten_to_nineteen.fetch(arr.at(2).to_i()))
      end
      if arr.at(2).!=("0") && arr.at(1).!=("1")
        three_digit_array.push(zero_to_nine.fetch(arr.at(2).to_i()))
      end
      three_digit_array.join()
    end
    three_digits(number_split)
  end
end
