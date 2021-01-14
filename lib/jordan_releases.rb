require_relative "./jordan_releases/version"
require_relative "./jordan_releases/cli"
require_relative "./jordan_releases/month"
require_relative "./jordan_releases/scraper"
require_relative "./jordan_releases/sneaker"

require 'pry'
require 'nokogiri'
require 'open-uri'


module JordanReleases
  class Error < StandardError; end
  # Your code goes here...
end
