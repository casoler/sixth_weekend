class CreateThesaurs < ActiveRecord::Migration[5.0]
  def change
    create_table :thesaurs do |t|

      t.timestamps
    end
  end
end
