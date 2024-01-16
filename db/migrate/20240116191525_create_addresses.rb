class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :zip
      t.string :public_place
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :ibge_code

      t.timestamps
    end
  end
end
