require 'rails_helper'

RSpec.describe Thesaur, type: :model do
  describe "#has_many :entries" do
    it 'should return count of 1 if 1 entry is added to thesaurus' do
      thesaurus = Thesaur.new
      thesaurus.save
      puts "==> " + thesaurus.inspect
      # entry = Entry.new(thesaur_id: thesaurus.id)
      entry = Entry.create(word: '',
                           antonym: "",
                           synonym: '',
                           thesaur_id: thesaurus.id)

      expect(thesaurus.entries.count).to eq(1)
    end
  end
end
