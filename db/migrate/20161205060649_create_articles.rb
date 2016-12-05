class CreateArticles < ActiveRecord::Migration
  has_many :comments, :as => :commentable

  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
