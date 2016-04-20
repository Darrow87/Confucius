class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false, uniqueness: true
      t.string :email, null: false, uniqueness: true
      t.string :password_digest, null: false
      t.string :profile, null: false

      t.timestamps null: false
    end
  end
end
