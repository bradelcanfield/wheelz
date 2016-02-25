class CreateCommuters < ActiveRecord::Migration
  def change
    create_table :commuters do |t|
      t.string :name
      t.string :username
      t.string :phone
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
