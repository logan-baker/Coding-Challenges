# import = importer
# lineup = registrar
require 'csv'

module Lineup
  class Import
    def self.take(file_path:)
      people = []
      CSV.foreach(file_path, col_sep: self.delimiter, converters: [:strip, :custom_date]) do |row|
        parse = self.parsing(row)
        people << Person.new(
          last_name:  parse[:last_name],
          first_name: parse[:first_name],
          middle_inital:  parse[:middle_inital],
          gender: parse[:gender],
          dob:  parse[:dob],
          fav_color:  parse[:fav_color]
        )
      end
      people
    end

    # DATE_FORMAT = ToDo:Regex <month><day><year> +/- .gsub

    CSV::Converters[:strip] = -> (field) {
      field.strip
    }

    CSV::Converters[:custom_date] = -> (field) {
      # ToDo: Finish defining DATE_FORMAT
      date_parts = DATE_FORMAT.match(field)
      # Ensure the proper formatting
      date_parts.nil ? field : Date.new(date_parts[:year].to_i, date_parts[:months].to_i, date_parts[:day].to_i)
    }
  end
end
