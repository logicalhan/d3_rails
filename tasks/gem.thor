#!/usr/bin/env ruby
require 'thor'
require 'thor/actions'
require 'pry'



class Gem < Thor
  include Thor::Actions
  GEM_PATH = Dir.pwd
  desc "update TO VERSION", "say hello to NAME"
  def update(version)
    `cd ~ && mkdir d3_tmp && cd d3_tmp && git clone --branch v#{version} https://github.com/mbostock/d3.git`
    `cp ~/d3_tmp/d3/d3.js ./app/assets/javascripts/d3.js`
    `cp ~/d3_tmp/d3/d3.min.js ./app/assets/javascripts/d3.min.js`
    gsub_file("#{GEM_PATH}/lib/d3_rails/version.rb", /["']([^"']*)["']/, "'#{version}'")
    `gem build d3_rails.gemspec`
    `rm -rf ~/d3_tmp`
    push_to_rubygems = ask("push to rubygems?", limited_to: ["yes", "no"]) == "yes"
    if push_to_rubygems
      `gem push d3_rails-#{version}.gem`
    end
  end
end

Gem.start
