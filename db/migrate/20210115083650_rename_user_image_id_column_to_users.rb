class RenameUserImageIdColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :UserImageId, :_image_id
  end
end
