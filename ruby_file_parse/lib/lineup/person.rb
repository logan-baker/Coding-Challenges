
module Lineup
  class Person
    attr_accessor \
    :last_name,
    :first_name,
    :middle_inital,
    :gender,
    :dob,
    :fav_color

#  class will create a new instance of itself. It will then, internally, call the method initialize on the new object
    def initialize (last_name:, first_name:, middle_inital:, gender:, dob:, fav_color: )
    @last_name  = last_name
    @first_name = first_name
    @middle_inital  = middle_inital
    @gender = gender
    @dob  = dob
    @fav_color  = fav_color
    end

# create a helper to expand gender
    def gender
      parse = {
        "M" => "Male",
        "F" => "Female",
      }
      # Some don't need it. ToDo specify inclusions
    end

    def to_s
      [
        last_name,
        first_name,
        gender,
        # http://strftime.net/
        dob.strftime('%-m/%-d/%Y'),
        fav_color
      ].join(" ")
    end
  end
end
