require "bundler/setup"
require "rspec/regselect"
require "union_find_tree"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

if ENV["SELECTION"]
  RSpec::Regselect.selection_start
end
if ENV["COVERAGE"]
  RSpec::Regselect.coverage_start
end
