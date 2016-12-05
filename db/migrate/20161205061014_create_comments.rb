class CreateComments < ActiveRecord::Migration
  belongs_to :commentable, :polymorphic true
  has_many :comments, :as => :commentable
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
