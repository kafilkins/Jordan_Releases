class JordanReleases::Sneaker

  attr_accessor :title #:month, :price, :day
  attr_reader :release_date
  @@all = []

  def initialize(title, release_date)
    @title = title
    @release_date = []
  #  @month = month
  #  @price = price
  #  @day = day
    @@all << self
  end

  def self.all
      JordanReleases::Scraper.scrape_sneaker_title_january(self) if @@all.empty?
  end

  def add_release_date(release_date)
    @release_date << release_date
  end

  def release_date(sneaker)
    sneaker = JordanReleases::Sneaker.new(title)
    binding.pry
  end

end
