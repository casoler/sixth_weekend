require './thesaurus.rb'

class Entry
  # belongs_to :thesaurus
  attr_accessor :word, :synonyms, :antonyms
end