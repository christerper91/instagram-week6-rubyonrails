class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :pengguna, foreign_key: true
      t.text :caption
      t.timestamps
    end
  end
end
