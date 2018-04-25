require "find_apartment" # loads all classes needed
require_relative "./support/save_helpers"

RSpec.configure do |c|
  c.include SaveHelpers
end
