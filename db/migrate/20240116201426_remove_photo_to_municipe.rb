class RemovePhotoToMunicipe < ActiveRecord::Migration[7.1]
  def change
    remove_column :municipes, :photo
  end
end
