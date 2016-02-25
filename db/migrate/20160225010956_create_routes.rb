class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :start_pt
      t.string :end_pt
      t.time :arrive_by
      t.string :reoccurance

      t.timestamps null: false
    end
  end
end
