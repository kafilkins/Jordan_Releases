class JordanReleases::Month

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_info if @@all.empty?
    binding.pry
    @@all
  end

end
