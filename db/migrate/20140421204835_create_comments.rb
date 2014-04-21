class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :article
      t.text :body

      t.timestamps
    end
  end
end
