require 'rubygems'
require 'trollop'

Dir[File.dirname(__FILE__) + '/lib/classes/*.rb'].each {|file| require file }

opts = Trollop::options do
  opt :file_name, "Problem set file", :type => :string
end

Trollop::die :file_name, "must be passed in"  if opts[:file_name].nil?

Scenario.run(opts[:file_name])