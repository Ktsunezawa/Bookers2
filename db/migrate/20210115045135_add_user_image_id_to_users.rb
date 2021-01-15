class AddUserImageIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :UserImageId, :string
  end
end
