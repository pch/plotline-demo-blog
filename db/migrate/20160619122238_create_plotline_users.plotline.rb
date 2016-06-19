# This migration comes from plotline (originally 20160224161843)
class CreatePlotlineUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :plotline_users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :auth_token

      t.timestamps
    end
  end
end
