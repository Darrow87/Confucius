class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :voteable
      t.string :voteable_type
      t.references :user

      t.timestamps null: false
    end
  end
end
