class JordanReleases::Sneaker

  attr_accessor :name, :release_date, :month
  @@all = []

  def initialize(name)
    @name = name
    @release_date = []
    @month = month
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_sneaker_name(name) if @@all.empty?
    @@all
  end

  def release_date
    JordanReleases::Scraper.scrape_release_date(self) if @release_date.empty?
  end

  def month
    @month
  end

end
