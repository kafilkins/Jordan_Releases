require_relative "./jordan_releases/version"
require_relative "./jordan_releases/cli"
require_relative "./jordan_releases/month"
require_relative "./jordan_releases/scraper"

require 'pry'
require 'nokogiri'


module JordanReleases
  class Error < StandardError; end
  # Your code goes here...
end
