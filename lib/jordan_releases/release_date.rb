class JordanReleases::Release_day

  attr_accessor :day, :month, :sneaker
  @@all = []

  def initialize(day, month, sneaker)
    @day = day
    @month = month
    @sneaker = sneaker
    add_to_sneaker
    @@all << self
  end

  def self.all
    @@all
  end

  def add_to_sneaker
    @sneaker.day << self unless @sneaker.day.include?(self)
  end

end
