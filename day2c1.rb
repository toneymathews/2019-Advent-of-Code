def process_opcode(array)
	array[1] = 12
	array[2] = 2
	position = 0
	i = 0
	while position < array.length/4
		if array[i] == 1
			array[array[i+3]] = array[array[i+1]] + array[array[i+2]]
		elsif array[i] == 2
			array[array[i+3]] = array[array[i+1]] * array[array[i+2]]
		elsif array[i] == 99
			puts "element is #{array[0]}"
			return array[0]
		end
		i = i + 4
		position += 1
	end
end

def get_input
	array = []
	input = gets.chomp
	input.split(",").each { |a| array.push(a.sub(",",""))}
	array
end
puts process_opcode(get_input)
    