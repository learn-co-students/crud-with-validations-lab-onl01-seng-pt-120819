class MyValidator < ActiveModel:Validator
 def validates_name(record)
    (record.release_date && record.artist).uniq
end