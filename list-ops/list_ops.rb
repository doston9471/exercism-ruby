=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end

class ListOps
  def self.arrays(list)
    count = 0
    list.each { count += 1 }
    count
  end

  def self.reverser(list)
    reversed_list = []
    list.each { |item| reversed_list.unshift(item) }
    reversed_list
  end

  def self.concatter(list1, list2)
    concatenated_list = []
    list1.each { |item| concatenated_list << item }
    list2.each { |item| concatenated_list << item }
    concatenated_list
  end

  def self.mapper(list, &block)
    mapped_list = []
    list.each { |item| mapped_list << block.call(item) }
    mapped_list
  end

  def self.filterer(list, &block)
    filtered_list = []
    list.each { |item| filtered_list << item if block.call(item) }
    filtered_list
  end

  def self.sum_reducer(list)
    sum = 0
    list.each { |item| sum += item }
    sum
  end

  def self.factorial_reducer(list)
    factorial = 1
    list.each { |item| factorial *= item }
    factorial
  end
end
