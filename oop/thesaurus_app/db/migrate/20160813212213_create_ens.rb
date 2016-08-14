class CreateEns < ActiveRecord::Migration
  def change
    create_table :ens do |t|
      t.string :word
      t.string :antonyms
      t.string :synonyms

      t.timestamps null: false
    end
  end
end
