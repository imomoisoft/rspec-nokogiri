module RSpec
  module Nokogiri
    class HaveTag

      def initialize(tag_name)
        @tag_name = tag_name
      end

      def matches?(actual)
        @actual = actual

        tag = @actual.at(@tag_name)
        if @tag_value.nil?
          !tag.nil?
        else        
          tag.text == @tag_value
        end
      end

      def with_value(value)
        @tag_value = value
      end

      def failure_message_for_should
        "expected #{actual} to #{description}"
      end

      def failure_message_for_should_not
        "expected #{@actual} not to #{description}"
      end

      def description
        if @tag_value.nil?
          "have tag #{@tag_name}"
        else
          "have tag #{@tag_name} with value #{@tag_value}"
        end
      end

    end
  end
end
