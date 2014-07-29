require './lib/task'
require './lib/list'

@list_of_lists = []
@list_selected

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

def select_list
  puts ("Please enter name of list to select:")
  list_to_select = gets.chomp
  @list_of_lists.each do |each_list|
    if each_list.name == list_to_select
    @list_selected = each_list
    puts "Your currently selected list is #{@list_selected.name}"
    end
  end
end











