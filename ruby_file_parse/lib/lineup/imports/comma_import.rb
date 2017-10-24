module Lineup
  class CommaImport < Import
    # assigning
    def self.parsing(row)
      {
        last_name:  row[0],
        first_name: row[1],
        middle_inital:  nil,
        gender: row[2],
        dob:  row[4],
        fav_color:  row[3]
      }
    end

    def self.delimiter
      ','
    end
  end
end
