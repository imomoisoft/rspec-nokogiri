require 'rspec/nokogiri/have_tag.rb'
requrie 'rspec/nokogiri/have_tag_matcher.rb'

RSpec::Matchers.send :include, RSpec::Nokogiri::HaveTagMatcher
