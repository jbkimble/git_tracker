class CreateCommit < ActiveRecord::Migration[5.0]
  def change
    create_table :commits do |t|
      t.string :sha
      t.string :message
      t.string :author
      t.string :timestamp
    end
  end
end
