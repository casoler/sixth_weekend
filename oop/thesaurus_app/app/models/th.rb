class Th < ActiveRecord::Base
  has_many :ens

  def add_entry(entry)
    ens << entry
  end

  def delete_entry(entry)
    ens.find_by(id: entry.id).delete
  end

  def search_entries(word)
    ens.find_by(word: word)
  end
end
