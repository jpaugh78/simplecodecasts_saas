class ChangeMessages < ActiveRecord::Migration
  def change
    add_column :messages, :message_id, :integer
    add_column :messages, :subject, :string
    add_column :messages, :to, :string
    add_column :messages, :from, :string
    add_column :messages, :readStatus, :string
    add_column :messages, :body, :text
    add_column(:messages, :created_at, :datetime)
    add_column(:messages, :updated_at, :datetime)
  end
end
