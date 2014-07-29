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

def list_lists
  puts "Here are your Lists:"
  @list_of_lists.each do |list|
    puts "#{list.name}"
  end
  puts "\n"
end

def remove_list
  puts ("Please enter name of list to remove:")
  list_to_remove = gets.chomp
  @list_of_lists.each do |each_list|
    if each_list.name == list_to_remove
      @list_of_lists.delete(each_list)
    end
  end
end

add_list
add_list
remove_list
list_lists




