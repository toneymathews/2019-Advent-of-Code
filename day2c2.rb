def process_opcode(array, noun, verb)
	array[1] = noun
  array[2] = verb
	position = 0
	i = 0
	while position <= (array.length)/4
		if array[i] == 1
			array[array[i+3]] = array[array[i+1]] + array[array[i+2]]
		elsif array[i] == 2
			array[array[i+3]] = array[array[i+1]] * array[array[i+2]]
		elsif array[i] == 99
      if array[0] == 19690720
        puts "condition met"
        return array[0]
      else
        return 0
      end
		end
		i = i + 4
		position += 1
	end
end

def get_input
	array = []
	input = gets.chomp
  input.split(",").each { |a| array.push(a.sub(",","").to_i)}
	find_noun_and_verb(array)
end

def find_noun_and_verb(array)
  noun = 0
  verb = 0
  array_backup = array
  puts "length of array is #{array_backup.length}"
  a = array
  puts a[0]
  while noun <= 2
    verb = 0
    while verb <= 2
      #array = array_backup
      puts a[10]
      puts noun.to_s + " some " +  verb.to_s + " first element " + array[0].to_s + "backup" + a[0].to_s
      if process_opcode(array, noun, verb) != 0
        puts "value is #{100 * noun + verb}"
      end
      verb += 1
    end
    noun += 1
  end
end
get_input
    