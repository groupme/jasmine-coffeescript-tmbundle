module Jasmine
  class RunFocused
    def run(stdout)
      require 'rubygems'
      require 'launchy'

      if ENV["TM_FILEPATH"].match("experiences")
        server = "http://experiences.groupme.local:9000"
        relative_path = ENV['TM_FILEPATH'].split('assets/').last
      else
        server = "http://groupme.local:3000"
        relative_path = ENV['TM_FILEPATH'].split('javascripts/').last
      end
      Launchy.open("#{server}/evergreen/run/#{relative_path}")
    end
  end
end
