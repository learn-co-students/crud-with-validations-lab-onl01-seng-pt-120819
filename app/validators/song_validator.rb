class SongValidator < ActiveModel::Validator

    def validate(record)
        # unless record.title && record.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
        #     record.errors[:title] << "Invalid!"
        # end 


        unless record.released == false
            if !record.release_year
                record.errors[:release_year] << "Release Year can't be blank."
            elsif Date.today.year <= record.release_year
                record.errors[:release_year] << "Release Year must not be a future date."
            end

        end
    end
    
  end

  # release_year, an integer
  # Optional if released is false
  # Must not be blank if released is true
  # Must be less than or equal to the current year
  
  # Song is invalid without release year when released is true
  # Song is invalid when the release year is in the future

  #release == true, presence :true && release_year == Date.today.year + 1
