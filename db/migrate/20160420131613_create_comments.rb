class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commentable
      t.string :commentable_type
      t.references :user
      t.string :content, null: false

      t.timestamps null: false
    end
  end
end
