class JordanReleases::Sneaker

  attr_accessor :title #:release_date #:month, :price, :day
  @@all = []

  def initialize(title) #release_date)
    @title = title
  #  @release_date = release_date
  #  @month = month
  #  @price = price
  #  @day = day
    #add_to_month
    @@all << self
  end

  def self.all
      JordanReleases::Scraper.scrape_sneaker_title_january(self) if @@all.empty?
      #JordanReleases::Scraper.scrape_sneaker_title_february(self)
  end

end

#  def add_to_month
#    @month.sneakers << self unless @month.sneakers.include?(self)
#  end
