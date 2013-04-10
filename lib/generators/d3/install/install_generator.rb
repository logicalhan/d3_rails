require 'generators/d3'
require 'rails/generators'

module D3
  module Generators
    class InstallGenerator < Base

      def copy_d3
        if options.head?

          git_root = File.expand_path "~/.ember"
          gem_file = File.join git_root, "Gemfile"

          # If it doesn't exist yet
          unless File.exist?(git_root)
            command = %{git clone git://github.com/emberjs/ember.js.git "#{git_root}"}
            say_status("downloading", command, :green)

            cmd command
          else
            Dir.chdir git_root do
              command = "git fetch origin && git reset origin/master --hard"
              say_status("updating", command, :green)

              cmd command
            end
          end

          Dir.chdir git_root do
            say_status("building", "bundle && bundle exec rake clean dist", :green)
            Bundler.with_clean_env do
              cmd "bundle --gemfile #{gem_file}"
              cmd %{BUNDLE_GEMFILE="#{gem_file}" bundle exec rake clean dist}
            end
          end

          source_paths << File.join(git_root, "dist")

          copy_file "ember.js", "vendor/assets/ember/development/ember.js"
          copy_file "ember.min.js", "vendor/assets/ember/production/ember.js"
        end
      end
    end
  end
end