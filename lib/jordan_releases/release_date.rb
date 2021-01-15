class JordanReleases::Release_date

  attr_accessor :date
  @@all = []

  def initialize
    @date = date
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_info(release_date) if @@all.empty?
    binding.pry
    @@all
  end

end
