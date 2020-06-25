class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :article_title
      t.text :article_data
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
