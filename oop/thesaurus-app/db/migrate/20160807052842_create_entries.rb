class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :word
      t.string :antonym
      t.string :synonym
      t.integer :thesaur_id

      t.timestamps
    end
  end
end
