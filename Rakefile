require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['*_test.rb', '*_spec.rb']
  t.verbose = true
end

task default: :test
task spec: :default
