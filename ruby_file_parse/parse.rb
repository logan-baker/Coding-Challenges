#!/usr/bin/env ruby
# File.dirname to return an absolute path or relative if given
# Convert pathname to an absolute, expand_path(p1, p2 = v2)
# __FILE__ for reference to current file name

project_root = File.dirname(File.expand_path("..", __FILE__))
Dir.glob(project_root + '/lib/**/*.rb', &method(:require))

# Import the people first
comma_file = File.expand_path("../../data/comma.txt" , __FILE__)
pipe_file = File.expand_path("../../data/pipe.txt" , __FILE__)
space_file = File.expand_path("../../data/space.txt" , __FILE__)

people = []
people << Lineup::CommaImport.take(file_path: comma_file)
people << Lineup::PipeImport.take(file_path: pipe_file)
people << Lineup::SpaceImport.take(file_path: space_file)
# return new array to 1-d self
people.flatten!

# Output1 sorted by gender (females before males) then by last name ascending.
# Female should sort prior due to F <=> M
output = people.sort_by{ |sort| [sort.gender, sort.last_name] }.map(&:to_s).join("\n")
puts output

# Output2 sorted by birth date, ascending.
output = people.sort_by{ |sort| sort.dob}.map(&:to_s).join("\n")
puts output


# Output 3 sorted by last name, descending.
output = people.sort{|a,b| b.last_name <=> a.last_name }.map(&:to_s).join("\n")
puts output
