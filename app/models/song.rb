class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :release_year, presence: true, if: :released?
    validates :artist_name, presence: true
    validate :future_year
end

def future_year
    if release_year.present? && release_year > Date.today.year
        errors.add(:title, "release year in the future")
    end
end
