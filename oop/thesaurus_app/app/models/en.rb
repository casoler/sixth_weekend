class En < ActiveRecord::Base
  belongs_to :th

  # attr_accessor :antonyms

  # def get_entry(word)
  #   find_by(word: word)
  # end
end
