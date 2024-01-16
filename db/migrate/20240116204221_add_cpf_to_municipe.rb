class AddCpfToMunicipe < ActiveRecord::Migration[7.1]
  def change
    add_column :municipes, :cpf, :string
  end
end
