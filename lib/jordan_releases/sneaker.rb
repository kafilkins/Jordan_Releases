class JordanReleases::Sneaker

  attr_accessor :name, :price
  @@all = []

  def initialize(name, price)
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_info if @@all.empty?
    @@all
  end

end
