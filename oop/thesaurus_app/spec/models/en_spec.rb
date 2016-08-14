require 'rails_helper'

RSpec.describe En, type: :model do
  describe '#has_many' do
    it "should retrieve a word's antonyms" do
      @th = Th.new
      @th.save

      entry = En.new(:th_id => @th.id, :word => 'happy', :antonyms => 'sad, melancholic')
      entry.save

      @th.add_entry(entry)

      @entry = @th.search_entries('happy')

      expect(@entry.antonyms).to eq('sad, melancholic')
    end

    it "should retrieve a word's synonyms" do
      @th = Th.new
      @th.save

      entry = En.new(:th_id => @th.id, :word => 'happy', :synonyms => 'cheerful, cheery, merry, joyful, jovial, jolly')
      entry.save

      @th.add_entry(entry)

      @entry = @th.search_entries('happy')

      expect(@entry.synonyms).to eq('cheerful, cheery, merry, joyful, jovial, jolly')
    end
  end
end
