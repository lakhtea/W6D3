class CreateArtworks2 < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false 
      t.string :img_url, null: false, unique: true
      t.integer :artist_id, null: false
    end

    add_index :artworks, :artist_id
  end
end
