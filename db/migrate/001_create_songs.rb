class CreateSongs < ActiveRecord::Migration
    
    create_table :songs do |t|
        t.string :title
        t.boolean :released
        t.integer :release_year
        t.string :artist_name
        t.string :genre
        t.datetime "created_at",   null: false
        t.datetime "updated_at",   null: false
    end

end
