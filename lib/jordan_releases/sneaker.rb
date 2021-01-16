class JordanReleases::Sneaker

  attr_accessor :name, :release_date, :month
  @@all = []

  def initialize(name, month, release_date)
    @name = name
    @month = month
    @release_date = []
    add_to_month
    @@all << self
  end

  def self.all
    @@all
  end

  def add_to_month
    @month.sneakers << self unless @month.sneakers.include?(self)
  end

  def release_date
    JordanReleases::Scraper.scrape_release_date(self) if @release_date.empty?
  end

  def month
    @month
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
