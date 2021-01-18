class JordanReleases::Sneaker

  attr_accessor :title, :month, :day
  @@all = []

  def initialize(title, month, day)
    @title = title
    @month = month
    @day = day
    #add_to_month
    save
  end

  def self.all
      JordanReleases::Scraper.scrape_release_info(self) if @@all.empty?
  end

  def save
    @@all << self
  end

end

#  def add_to_month
#    @month.sneakers << self unless @month.sneakers.include?(self)
#  end
