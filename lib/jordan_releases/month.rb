class JordanReleases::Month

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_months if @@all.empty?
    @@all
  end

end
