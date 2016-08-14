class CreateThs < ActiveRecord::Migration
  def change
    create_table :ths do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
