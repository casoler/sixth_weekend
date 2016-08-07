require 'rspec'
require './entries.rb'
# Create a thesaurus application. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!

class Thesaurus
  # has_many :entries

end


# class Entry
#   belongs_to :thesaurus
#   attr_accessor :word, :synonyms, :antonyms
# end


RSpec.describe Thesaurus do
  describe "#has_many :entries" do
    it 'should return count of 1 if 1 entry is added to thesaurus' do
      thesaurus = Thesaurus.new
      entry = Entry.new(thesaurus_id: thesaurus.id)

      # thesaurus.entries << Entry.new.save


      expect(thesaurus.count).to eq(1)
    end
  end
end

# RSpec.describe Entry do
#   describe "#is_prime?" do
#     it 'should return true if given 1' do
#       prime_number = PrimeNumber.new
#       expect(prime_number.is_prime?(1)).to eq(true)
#     end
#   end
# end



