class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :message_id
      t.string :subject
      t.string :to
      t.string :from
      t.string :readStatus
      t.text :body
      
      t.timestamp
    end
  end
end
