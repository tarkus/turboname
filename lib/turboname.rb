require_relative "turboname/version"
require_relative "turboname/domain"
require_relative "turboname/dictionary"
require_relative "turboname/random_dictionary"
require "whois"

module Turboname
  # all the logic is in the other files
  
  # helper
  def self.path
    File.dirname(__FILE__)
  end
end
