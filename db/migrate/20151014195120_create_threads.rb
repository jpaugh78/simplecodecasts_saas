class CreateThreads < ActiveRecord::Migration
  def change
    create_table :threads do |t|
      t.integer :thread_id
      t.string :author
      t.string :title
      
      t.timestamp
    end
  end
end
