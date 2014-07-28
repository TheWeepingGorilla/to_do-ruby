require './lib/task'
require './lib/list'

@list_of_lists = []

def add_list
  puts ("Please name your list:")
  list_name = gets.chomp
  @list_of_lists << List.new(list_name)
  puts "You have added #{@list_of_lists[-1].name} to your list of lists."
  puts "\n"
end

add_list
