require 'rspec'
require 'to_do'

describe "List" do
  it "creates a list" do
    test_list = List.new
    test_list.should be_an_instance_of List
  end
end

