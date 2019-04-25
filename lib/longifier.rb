class Numeral

  def initialize(number)
    @number = number
  end

  def number
    @number
  end

  def to_words
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
    words = String.new()
    numbers = @number.to_s.split('')
    
    numbers.each_with_index do |number_str, i|
      if numbers.length == 2
        if (numbers[numbers.length - 2] == '1') & (i == numbers.length - 2)
          digits_to_fetch = number_str.concat(numbers[i + 1])
          a_word = tweens_and_teens.fetch(digits_to_fetch)
          words.concat(a_word)
          break
        end
      end
      if numbers.length == 1
        a_word = ones_place.fetch(number_str)
        words.concat(a_word)
      end
    end
    words
  end

end