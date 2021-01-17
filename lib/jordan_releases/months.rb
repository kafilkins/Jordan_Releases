class JordanReleases::Month

  attr_accessor :name, :sneakers
  @@all = []

  def initialize(name)
    @name = name
    @sneakers = []
    save
  end

  def self.all
    JordanReleases::Scraper.scrap_months if @@all.empty?
    @@all
  end

  def get_sneakers
    JordanReleases::Scraper.scrap_sneaker_name(self) if @sneakers.empty?
  end

  def save
    @@all << self
  end

#  def release_date
#    JordanReleases::Scraper.scrape_release_date(self) if @release_date.empty?
#  end

end
