require 'rails/generators/base'

module D3
  module Generators
    class Base < Rails::Generators::Base #:nodoc:
      def self.source_root
        @_d3_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'd3', generator_name, 'templates'))
      end

      def self.banner
        "rails generate d3:#{generator_name} #{self.arguments.map{ |a| a.usage }.join(' ')} [options]"
      end

      private

      def add_gem(name, options = {})
        gemfile_content = File.read(destination_path("Gemfile"))
        File.open(destination_path("Gemfile"), 'a') { |f| f.write("\n") } unless gemfile_content =~ /\n\Z/
        gem name, options unless gemfile_content.include? name
      end

      def print_usage
        self.class.help(Thor::Base.shell.new)
        exit
      end
    end
  end
end