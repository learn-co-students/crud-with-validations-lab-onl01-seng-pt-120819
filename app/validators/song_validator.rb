class SongValidator < ActiveModel::Validator

    def validate(record)

        unless record.released == false
            if !record.release_year
                record.errors[:release_year] << "Release Year can't be blank."
            elsif Date.today.year <= record.release_year
                record.errors[:release_year] << "Release Year must not be a future date."
            end
        end
    end
    
end


