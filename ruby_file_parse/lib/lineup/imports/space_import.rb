module Lineup
  # may not be needed
  class SpaceImport < Import
    # assigning
    def self.parsing(row)
      {
        last_name:  row[0],
        first_name: row[1],
        middle_inital:  row[2],
        gender: row[3],
        dob:  row[4],
        fav_color:  row[5]
      }
    end
    # def self.delimiter
    #   not needed for final format
    # end
  end
end
