class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    # validates :released, inclusion: [true, false]
    # validates :released, presence: true
    # validates :release_year, 
    validates :artist_name, presence: true


end
