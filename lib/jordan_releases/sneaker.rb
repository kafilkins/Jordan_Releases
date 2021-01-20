class JordanReleases::Sneaker

  attr_accessor :title #:release_date #:month, :price, :day
  @@all = []

  def initialize(title)
    @title = title
  #  @release_date = release_date
  #  @month = month
  #  @price = price
  #  @day = day
    @@all << self
  end

  def self.all
      JordanReleases::Scraper.scrape_sneaker_title_january(self) if @@all.empty?
      #JordanReleases::Scraper.scrape_sneaker_title_february(self)
  end
end
