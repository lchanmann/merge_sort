require 'minitest/autorun'
require 'minitest/pride'

require_relative 'merge_sort'

describe 'MergeSort' do
  it "should sort an array of number" do
    merge_sort([2,4,5,9,1,7,8,3,6,0]).must_equal [0,1,2,3,4,5,6,7,8,9]
  end
end
