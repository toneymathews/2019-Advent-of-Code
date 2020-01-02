def calculate_fuel(mass)
  recursive_fuel = ((mass/3).floor - 2) > 0 ? ((mass/3).floor - 2) + calculate_fuel((mass/3).floor - 2) : 0
end
def get_input
  input = gets("\t\n").chomp
  input
end
def calculate_total_fuel
  input = get_input
  input_array = input.split
  total_fuel = 0
  input_array.each do |mass|
    total_fuel += calculate_fuel(mass.to_i)
  end
  puts "Total fuel is #{total_fuel}"
end
calculate_total_fuel

