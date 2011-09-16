module Jasmine
  class RunFocused
    def run(stdout)
      require 'rubygems'
      require 'launchy'
      relative_path = ENV['TM_FILEPATH'].split('javascripts/').last
      Launchy.open("http://groupme.local:3000/evergreen/run/#{relative_path}")
    end
  end
end
