require 'csv'

product = 1
num = 0

CSV.foreach(ARGV[0]) do |row|
	if row[0].to_i < row[3].to_i && row[2].to_i == row[3].to_i + 3
		product *= row[2].to_i
		num = 1
	
	end	
end

if num == 0
	puts 0

else puts product
end
