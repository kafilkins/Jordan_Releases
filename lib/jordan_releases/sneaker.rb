class JordanReleases::Sneaker

  attr_accessor :name, :release_date
  @@all = []

  def initialize(name, price)
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_info(name) if @@all.empty?
    @@all
  end

end
