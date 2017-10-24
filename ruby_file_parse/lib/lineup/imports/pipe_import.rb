module Lineup
  class PipeImport < Import
    # assigning
    def self.parsing(row)
      {
        last_name:  row[0],
        first_name: row[1],
        middle_inital:  row[2],
        gender: row[3],
        dob:  row[5],
        fav_color:  row[4]
      }

    end

    def self.delimiter
      '|'
    end
  end
end
