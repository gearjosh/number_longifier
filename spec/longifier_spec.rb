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

  it('returns the written-out version of a number from 20 to 99') do
    expect(Numeral.new(27).to_words()).to(eq('twenty seven'))
  end

  it('returns the written-out version of a number from 100 to 999') do
    expect(Numeral.new(365).to_words()).to(eq('three hundred sixty five'))
  end

  it('returns the written-out version of a number from 1000 to 9999') do
    expect(Numeral.new(6899).to_words()).to(eq('six thousand eight hundred ninety nine'))
  end

  it('returns the written-out version of a number from 10000 to 19999') do
    expect(Numeral.new(16897).to_words()).to(eq('sixteen thousand eight hundred ninety seven'))
  end

  it('returns the written-out version of a number from 20000 to 99999') do
    expect(Numeral.new(76241).to_words()).to(eq('seventy six thousand two hundred forty one'))
  end

end
