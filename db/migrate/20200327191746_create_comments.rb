class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post, null: false, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
    # add_foreign_key :posts, :comments, on_delete: :cascade
  end
end
