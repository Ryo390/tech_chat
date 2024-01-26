class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.integer :chat_id
      t.text :content
      t.string :name
      t.timestamps
    end
  end
end
