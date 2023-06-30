class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :title
      t.integer :body
      t.timestamps
    end
  end
end
