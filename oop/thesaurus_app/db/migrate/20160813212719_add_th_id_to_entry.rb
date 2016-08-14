class AddThIdToEntry < ActiveRecord::Migration
  def change
    add_column :ens, :th_id, :integer
  end
end
