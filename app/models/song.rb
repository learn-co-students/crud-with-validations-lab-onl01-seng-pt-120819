class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: { scope: :release_year }  
    validates :release_year, presence: true, if: :released
    validate :current_release_year?
end


def current_release_year?
    if release_year.present? && release_year > Date.today.year 
        errors.add(:release_year, "can't be in the future")
    end 
end 



