require 'rspec'

# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
class PrimeNumber
  def is_prime?(number)
    (2..number - 1).each do |divisor|
      if number % divisor == 0
        return false
      end
    end
  
    true
  end

  # Second, implement the highest_prime_number_under method below. It should accept a number as
  # an argument and return the highest prime number under that number. For example, the 
  # highest prime number under 10 is 7.

  def highest_prime_number_under(number)
    number.downto(1).each do |num|
      if is_prime?(num)
        return num
      end
    end
  end
end

RSpec.describe PrimeNumber do
  describe "#is_prime?" do
    it 'should return true if given 1' do
      prime_number = PrimeNumber.new
      expect(prime_number.is_prime?(1)).to eq(true)
    end

    it 'should return true if given 2' do
      prime_number = PrimeNumber.new
      expect(prime_number.is_prime?(2)).to eq(true)
    end

    it 'should return false if given 4' do
      prime_number = PrimeNumber.new
      expect(prime_number.is_prime?(4)).to eq(false)
    end

    it 'should return false if given 26' do
      prime_number = PrimeNumber.new
      expect(prime_number.is_prime?(26)).to eq(false)
    end

    it 'should return true if given 29' do
      prime_number = PrimeNumber.new
      expect(prime_number.is_prime?(29)).to eq(true)
    end

    it 'should return false if given 7918' do
      prime_number = PrimeNumber.new
      expect(prime_number.is_prime?(7918)).to eq(false)
    end

    it 'should return true if given 7919' do
      prime_number = PrimeNumber.new
      expect(prime_number.is_prime?(7919)).to eq(true)
    end
  end

  describe "#highest_prime_number_under?" do
    it 'should return 1 if given 1' do
      prime_number = PrimeNumber.new
      expect(prime_number.highest_prime_number_under(1)).to eq(1)
    end

    it 'should return 3 if given 4' do
      prime_number = PrimeNumber.new
      expect(prime_number.highest_prime_number_under(4)).to eq(3)
    end

    it 'should return 29 if given 29' do
      prime_number = PrimeNumber.new
      expect(prime_number.highest_prime_number_under(29)).to eq(29)
    end  

    it 'should return 29 if given 30' do
      prime_number = PrimeNumber.new
      expect(prime_number.highest_prime_number_under(30)).to eq(29)
    end    
  end
end