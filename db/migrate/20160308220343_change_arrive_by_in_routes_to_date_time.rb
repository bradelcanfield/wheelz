class ChangeArriveByInRoutesToDateTime < ActiveRecord::Migration
  def change
    remove_column :routes, :arrive_by, :time
    add_column :routes, :arrive_by, :datetime
  end
end
