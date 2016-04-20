class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.references :user
      t.string :content, null: false

      t.timestamps null: false
    end
  end
end
