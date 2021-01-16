class JordanReleases::Release_date

  attr_accessor :date, :month, :sneaker
  @@all = []

  def initialize(date, month, sneaker)
    @date = date
    @month = month
    @sneaker = sneaker
    add_to_sneaker
    @@all << self
  end

  def self.all
    @@all
  end

  def add_to_sneaker
    @sneaker.date << self unless @sneaker.date.include?(self)
  end

end
