require 'csv'
require 'json'

sum = 0
json_file = JSON.parse(File.read(ARGV[1]))

CSV.foreach(ARGV[0]) do |row|
	json_file.each do |key, value|
	
		if key == row[2].to_s
			sum += value.to_i
		end
	end
	
end
puts sum
