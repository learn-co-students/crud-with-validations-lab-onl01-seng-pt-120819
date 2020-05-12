class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :released, inclusion: { in: [true, false] }
    validates :artist_name, presence: true

    with_options if: :released  do |song|
        song.validates :release_year, presence: true
        song.validates :release_year, numericality: { less_than_or_equal_to: DateTime.now.year}
    end

    # def released?
    #     released
    # end

    # class User < ApplicationRecord
    #     with_options if: :is_admin? do |admin|
    #       admin.validates :password, length: { minimum: 10 }
    #       admin.validates :email, presence: true
    #     end
    #   end
end
