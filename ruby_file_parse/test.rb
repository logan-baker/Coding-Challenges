# # data1 = File.read("records/comma.txt").gsub(',', '')
# # data2 = File.read("records/pipe.txt").gsub('|', '').gsub('-', '/')
# # data3 = File.read("records/space.txt").gsub('-', '/')
# records = %w(data1 data2 data3)
#
# parsed_data = [data1, data2, data3]
#
# Dir.foreach("/records") do |fname|
#   puts fname
# end
#
# inputs = %w(pipe.txt comma.txt space.txt)
#
# inputs.each do |input|
#   data = []
#   File.foreach(input) do |line|
#     if line.include? '|'
#       last, first, mid, gender, color, dob = line.split(' | ')
#       dob.strip!
#     elsif line.include? ','
#       last, firast, mid, gender, color, dob = line.split(' , ')
#     else # presume space separation
#       # to do: process format 3
#     end
#     data << "#{last} #{first} #{gender} #{dob} #{color}"
#   end
#   # to do: sort our data array?
#   # output the data
#   data.each do |line|
#     puts line
#   end
# end
