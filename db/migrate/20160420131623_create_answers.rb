class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content, null: false
      t.references :user
      t.references :question
<<<<<<< 0e5645787b186a3c5782869e648ac1b72576a67f
      t.boolean :best_answer, default: false
=======
      t.boolean :best_answer { default: false }
>>>>>>> add error handling

      t.timestamps null: false
    end
  end
end
