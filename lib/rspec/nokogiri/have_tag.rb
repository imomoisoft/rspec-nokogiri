module RSpec
  module Nokogiri
    class HaveTag

      def initialize(tag_name)
        @tag_name = tag_name
      end

      def matches?(actual)
        @actual = actual

        @tag = @actual.xpath(@tag_name)
        if @tag_value.nil? || @tag.empty?
          !@tag.empty?
        else
          @actual = @tag
          @tag.text == @tag_value.to_s
        end
      end

      def with_value(value)
        @tag_value = value
        self
      end

      def failure_message_for_should
        "expected:\n#{@actual} to #{description}"
      end

      def failure_message_for_should_not
        "expected #{@actual} not to #{description}"
      end

      def description
        if @tag_value.nil?
          "have tag '#{@tag_name}'"
        elsif @tag.empty?
          "have tag '#{@tag_name}' with value '#{@tag_value}'"
        else
          "have value '#{@tag_value}'"
        end
      end

    end
  end
end
