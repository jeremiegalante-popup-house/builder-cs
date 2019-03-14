#LOAD CUSTOM MODULE
require_relative "builder-dm/dm"
require_relative "builder-itm/itm"

#DEFINE CS MODULE
module CS
  VERSION = Gem::Version.new("1.0.0")
end

#LOAD MODULE CLASS FILES
Dir["#{File.dirname(__FILE__)}/**/*.rb"].each do |current_file|
  require current_file unless current_file == __FILE__
end