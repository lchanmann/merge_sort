require 'benchmark'
require_relative 'merge_sort'

size = 1000000
sample = (1..size).map { rand(size) }

Benchmark.bm(10) do |b|
  b.report("built-in sort    ") { sample.sort }
  b.report("built-in sort_by ") { sample.sort_by {|n| n} }
  b.report("merge sort       ") { merge_sort(sample) }
end
