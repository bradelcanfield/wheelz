class RemoveUsernameFromCommuter < ActiveRecord::Migration
  def change
    remove_column :commuters, :username, :string
  end
end
