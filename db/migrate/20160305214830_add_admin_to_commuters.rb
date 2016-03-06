class AddAdminToCommuters < ActiveRecord::Migration
  def change
    add_column :commuters, :admin, :boolean, default: false
  end
end
