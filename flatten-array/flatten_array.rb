=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end

class FlattenArray
  def self.flatten(nested_list)
    flattened_list = []
    nested_list.each do |item|
      if item.is_a?(Array)
        flattened_list.concat(flatten(item))
      elsif item != nil
        flattened_list << item
      end
    end
    flattened_list
  end
end
