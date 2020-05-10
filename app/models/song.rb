class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: true 
    validates :artist_name, presence: true 
    validates :release_year, numericality: {less_than_or_equal_to: Date.today.year}, :if => :released?
end

#   - Optional if `released` is `false`
#   - Must not be blank if `released` is `true`
#   - Must be less than or equal to the current year
# - `artist_name`, a `string`
#   - Must not be blank
