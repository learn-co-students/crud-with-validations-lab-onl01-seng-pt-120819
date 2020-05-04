class Song < ApplicationRecord
    validates :title, presence: :true
    validates :title, uniqueness: { scope: :released_year, :artist_name}
 
    validates :released, inclusion {in: [true, false]}
    validates :released_year, numericality: { only_integer: true }

end
