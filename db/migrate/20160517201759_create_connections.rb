class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :provider
      t.string :oauth_token
      t.string :secret
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
