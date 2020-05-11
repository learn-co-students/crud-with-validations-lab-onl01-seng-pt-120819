class Song < ApplicationRecord

validates :title, presence: true
validates :artist_name, presence: true
validates :release_year, presence: true, uniqueness: true, if: :released?, numericality: {less_than_or_equal_to: ->(_song) {Date.current.year}}


    def released?
        self.released
    end


end
