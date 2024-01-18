class AlterBirthdayToDate < ActiveRecord::Migration[7.1]
  def change
    change_column :municipes, :birthday, 'date USING CAST(birthday AS date)'
  end
end
