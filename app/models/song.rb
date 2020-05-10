class Song < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
    validates :artist_name, presence: true
    validates :released, inclusion: { in: [true, false] }

    include ActiveModel::Validations
    validates_with SongValidator
end

