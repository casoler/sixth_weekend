require 'rails_helper'

RSpec.describe Th, type: :model do
  describe '#has_many' do
    it 'should add two entries to the thesaurus' do
      @th = Th.new
      @th.save
      @th.add_entry(En.new(:th_id => @th.id))
      @th.add_entry(En.new(:th_id => @th.id))
      expect(@th.ens.count).to eq(2)
    end

    it 'should delete an entry from the thesaurus' do
      @th = Th.new
      @th.save

      entry1 = En.new(:th_id => @th.id)
      entry1.save
      entry2 = En.new(:th_id => @th.id)
      entry2.save
      @th.add_entry(entry1)
      @th.add_entry(entry2)

      @th.delete_entry(entry1)
      expect(@th.ens.count).to eq(1)
    end

    it 'should find an entry in the thesaurus' do
      @th = Th.new
      @th.save

      entry1 = En.new(:th_id => @th.id, :word => 'happy')
      entry1.save
      
      @th.add_entry(entry1)

      @th.search_entries('happy')
      expect(@th.search_entries('happy').id).to eq(entry1.id)
    end

  end
end
