class JordanReleases::Sneaker

  attr_accessor :title, :month, :price, :day
  @@all = []

  def initialize(title)
    @title = title
    @month = month
    @price = price
    @day = day
    #add_to_month
    save
  end

  def self.all
      JordanReleases::Scraper.scrape_sneaker_title_january(self) if @@all.empty?
      binding.pry
      #JordanReleases::Scraper.scrape_sneaker_title_february(self)
  end


  def save
    @@all << self
  end

end

#  def add_to_month
#    @month.sneakers << self unless @month.sneakers.include?(self)
#  end
