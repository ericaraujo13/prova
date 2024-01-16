class CreateMunicipes < ActiveRecord::Migration[7.1]
  def change
    create_table :municipes do |t|
      t.string :name
      t.string :email
      t.string :birthday
      t.string :phone
      t.string :photo
      t.integer :status

      t.timestamps
    end
  end
end
