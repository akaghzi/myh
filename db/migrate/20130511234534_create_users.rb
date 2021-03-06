class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :user_type
      t.string :session_cookie
      t.string :password_digest

      t.timestamps
    end
  end
end
