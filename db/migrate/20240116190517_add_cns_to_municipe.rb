class AddCnsToMunicipe < ActiveRecord::Migration[7.1]
  def change
    add_column :municipes, :cns, :string
  end
end
