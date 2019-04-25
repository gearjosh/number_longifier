require('rspec')
require('longifier')
require('pry')

describe('Numeral#to_words') do

  it('returns the written-out version of a 1-digit number') do
    expect(Numeral.new(3).to_words()).to(eq('three'))
  end

  it('returns the written-out version of a number from 10 to 19') do
    expect(Numeral.new(17).to_words()).to(eq('seventeen'))
  end

end
