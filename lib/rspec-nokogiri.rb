require 'rspec'
require 'rspec-expectations'

require 'rspec/nokogiri/have_tag'
require 'rspec/nokogiri/have_tag_matcher'

RSpec::Matchers.send :include, RSpec::Nokogiri::HaveTagMatcher
