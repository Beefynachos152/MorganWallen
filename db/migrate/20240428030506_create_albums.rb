class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.integer :release_date

      t.timestamps
    end
  end
end
