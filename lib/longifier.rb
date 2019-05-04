class Numeral

  def initialize(num)
    @number = num
  end

  def number
    @number
  end

  def to_words
    tweens_and_teens = {
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve',
      '13' => 'thirteen',
      '14' => 'fourteen',
      '15' => 'fifteen',
      '16' => 'sixteen',
      '17' => 'seventeen',
      '18' => 'eighteen',
      '19' => 'nineteen',
    }
    ones_place = {
      '1' => 'one',
      '2' => 'two',
      '3' => 'three',
      '4' => 'four',
      '5' => 'five',
      '6' => 'six',
      '7' => 'seven',
      '8' => 'eight',
      '9' => 'nine'
    }
    tens_place = {
      '2' => 'twenty',
      '3' => 'thirty',
      '4' => 'forty',
      '5' => 'fifty',
      '6' => 'sixty',
      '7' => 'seventy',
      '8' => 'eighty',
      '9' => 'ninety',
    }
    hundreds_place = {
      '1' => 'one hundred',
      '2' => 'two hundred',
      '3' => 'three hundred',
      '4' => 'four hundred',
      '5' => 'five hundred',
      '6' => 'six hundred',
      '7' => 'seven hundred',
      '8' => 'eight hundred',
      '9' => 'nine hundred',
    }
    thousands_place = {
      '1' => 'one thousand',
      '2' => 'two thousand',
      '3' => 'three thousand',
      '4' => 'four thousand',
      '5' => 'five thousand',
      '6' => 'six thousand',
      '7' => 'seven thousand',
      '8' => 'eight thousand',
      '9' => 'nine thousand',
    }
    tween_thousands_place = {
      '10' => 'ten thousand',
      '11' => 'eleven thousand',
      '12' => 'twelve thousand',
      '13' => 'thirteen thousand',
      '14' => 'fourteen thousand',
      '15' => 'fifteen thousand',
      '16' => 'sixteen thousand',
      '17' => 'seventeen thousand',
      '18' => 'eighteen thousand',
      '19' => 'nineteen thousand',
    }
    words = Array.new
    nums = @number.to_s.split('')


    if (nums.length == 2) & (nums[0] == '1')
      words.unshift(tweens_and_teens.fetch(@number.to_s))
    else
      nums_reversed = nums.reverse
      nums_reversed.each_with_index do |num, index|
        # if index == 5
          # words.unshift()
        if (index == 4) & (nums_reversed[4] == '1')
          words.unshift(tween_thousands_place.fetch(num.concat(nums_reversed[index - 1])))
        elsif (index == 4) & (nums_reversed[4] != '1')
          words.unshift(tens_place.fetch(num))
        elsif (index == 3) & (nums_reversed[4] == '1')
          next
        elsif (index == 3) & (nums_reversed[4] != '1')
          words.unshift(thousands_place.fetch(num))
        elsif index == 2
          words.unshift(hundreds_place.fetch(num))
        elsif index == 1
          words.unshift(tens_place.fetch(num))
        elsif index == 0
          words.unshift(ones_place.fetch(num))
        end
      end
    end
    words.join(' ')
  end

end