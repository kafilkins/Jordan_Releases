class JordanReleases::Sneaker

  attr_accessor :title, :month, :day
  @@all = []

  def initialize(title)
    @title = title
    @month = month
    @day = day
    #add_to_month
    save
  end

  def self.all
      JordanReleases::Scraper.scrap_sneaker_name(self) if @@all.empty?
  end

#  def add_to_month
#    @month.sneakers << self unless @month.sneakers.include?(self)
#  end

  def release_date
    JordanReleases::Scraper.scrape_release_day(self) if @release_day.empty?
  end

  def save
    @@all << self
  end

end

#case input
#when 1
#  puts sneakers.month.name
#when 2
#  puts sneakers.month.name
#when 3
#  puts sneakers.month.name
#when 4
#  puts sneakers.month.name
#when 5
#  puts sneakers.month.name
#when 6
#  puts sneakers.month.name
#else
#  puts "invalid"
