class AddMunicipeToAddress < ActiveRecord::Migration[7.1]
  def change
    add_reference :addresses, :municipe, foreign_key: true
  end
end
