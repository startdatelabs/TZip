require 'rubygems'
require 'active_support'
require 'rspec'

require File.join(File.dirname(__FILE__), '../lib/tzip.rb')
Dir.glob(File.dirname(__FILE__) + '/../lib/tzip/values/*.rb') {|file| require file}

def lookup_zip(zip)
  ActiveSupport::TimeZone.find_by_zipcode(zip)
end
