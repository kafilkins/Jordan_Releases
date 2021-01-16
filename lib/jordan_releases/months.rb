class JordanReleases::Month

  attr_accessor :name, :sneakers
  @@all = []

  def initialize(name)
    @name = name
    @sneakers = sneakers
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_months if @@all.empty?
    @@all
  end

  def get_sneakers
    JordanReleases::Scraper.scrap_sneaker_name(self)
  end

#  def release_date
#    JordanReleases::Scraper.scrape_release_date(self) if @release_date.empty?
#  end

end
