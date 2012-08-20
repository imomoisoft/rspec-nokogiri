module RSpec
  module Nokogiri
    module HaveTagMatcher

      def have_tag(tag_name)
        HaveTag.new(tag_name)
      end

    end
  end
end
